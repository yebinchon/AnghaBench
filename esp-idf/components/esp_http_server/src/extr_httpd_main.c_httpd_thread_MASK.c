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
struct httpd_data {TYPE_1__ hd_td; int /*<<< orphan*/  listen_fd; int /*<<< orphan*/  ctrl_fd; int /*<<< orphan*/  msg_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  THREAD_RUNNING ; 
 int /*<<< orphan*/  THREAD_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct httpd_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct httpd_data*) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
    int ret;
    struct httpd_data *hd = (struct httpd_data *) arg;
    hd->hd_td.status = THREAD_RUNNING;

    FUNC0(TAG, FUNC1("web server started"));
    while (1) {
        ret = FUNC6(hd);
        if (ret != ESP_OK) {
            break;
        }
    }

    FUNC0(TAG, FUNC1("web server exiting"));
    FUNC2(hd->msg_fd);
    FUNC3(hd->ctrl_fd);
    FUNC4(hd);
    FUNC2(hd->listen_fd);
    hd->hd_td.status = THREAD_STOPPED;
    FUNC5();
}