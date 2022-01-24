#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int max_open_sockets; } ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
struct TYPE_4__ {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct httpd_data*,int) ; 

void FUNC4(struct httpd_data *hd)
{
    for (int i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd != -1 && !FUNC2(hd->hd_sd[i].fd)) {
            FUNC0(TAG, FUNC1("Closing invalid socket %d"), hd->hd_sd[i].fd);
            FUNC3(hd, hd->hd_sd[i].fd);
        }
    }
}