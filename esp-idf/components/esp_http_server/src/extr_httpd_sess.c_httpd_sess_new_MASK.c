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
struct TYPE_3__ {int max_open_sockets; scalar_t__ (* open_fn ) (struct httpd_data*,int) ;} ;
struct httpd_data {TYPE_2__* hd_sd; TYPE_1__ config; } ;
typedef  scalar_t__ httpd_handle_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_4__ {int fd; int /*<<< orphan*/  recv_fn; int /*<<< orphan*/  send_fn; scalar_t__ handle; } ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  httpd_default_recv ; 
 int /*<<< orphan*/  httpd_default_send ; 
 int /*<<< orphan*/  FUNC3 (struct httpd_data*,int) ; 
 scalar_t__ FUNC4 (struct httpd_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct httpd_data*,int) ; 

esp_err_t FUNC7(struct httpd_data *hd, int newfd)
{
    FUNC0(TAG, FUNC2("fd = %d"), newfd);

    if (FUNC4(hd, newfd)) {
        FUNC1(TAG, FUNC2("session already exists with fd = %d"), newfd);
        return ESP_FAIL;
    }

    int i;
    for (i = 0; i < hd->config.max_open_sockets; i++) {
        if (hd->hd_sd[i].fd == -1) {
            FUNC5(&hd->hd_sd[i], 0, sizeof(hd->hd_sd[i]));
            hd->hd_sd[i].fd = newfd;
            hd->hd_sd[i].handle = (httpd_handle_t) hd;
            hd->hd_sd[i].send_fn = httpd_default_send;
            hd->hd_sd[i].recv_fn = httpd_default_recv;

            /* Call user-defined session opening function */
            if (hd->config.open_fn) {
                esp_err_t ret = hd->config.open_fn(hd, hd->hd_sd[i].fd);
                if (ret != ESP_OK) {
                    FUNC3(hd, hd->hd_sd[i].fd);
                    FUNC0(TAG, FUNC2("open_fn failed for fd = %d"), newfd);
                    return ret;
                }
            }
            return ESP_OK;
        }
    }
    FUNC0(TAG, FUNC2("unable to launch session for fd = %d"), newfd);
    return ESP_FAIL;
}