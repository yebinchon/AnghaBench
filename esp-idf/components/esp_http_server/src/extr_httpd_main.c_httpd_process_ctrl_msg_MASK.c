#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct httpd_data {TYPE_1__ hd_td; int /*<<< orphan*/  ctrl_fd; } ;
struct httpd_ctrl_data {int hc_msg; int /*<<< orphan*/  hc_work_arg; int /*<<< orphan*/  (* hc_work ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
#define  HTTPD_CTRL_SHUTDOWN 129 
#define  HTTPD_CTRL_WORK 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  THREAD_STOPPING ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,struct httpd_ctrl_data*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct httpd_data *hd)
{
    struct httpd_ctrl_data msg;
    int ret = FUNC3(hd->ctrl_fd, &msg, sizeof(msg), 0);
    if (ret <= 0) {
        FUNC1(TAG, FUNC2("error in recv (%d)"), errno);
        return;
    }
    if (ret != sizeof(msg)) {
        FUNC1(TAG, FUNC2("incomplete msg"));
        return;
    }

    switch (msg.hc_msg) {
    case HTTPD_CTRL_WORK:
        if (msg.hc_work) {
            FUNC0(TAG, FUNC2("work"));
            (*msg.hc_work)(msg.hc_work_arg);
        }
        break;
    case HTTPD_CTRL_SHUTDOWN:
        FUNC0(TAG, FUNC2("shutdown"));
        hd->hd_td.status = THREAD_STOPPING;
        break;
    default:
        break;
    }
}