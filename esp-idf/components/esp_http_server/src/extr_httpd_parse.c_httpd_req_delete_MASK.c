#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct httpd_req_aux {scalar_t__ remaining_len; } ;
struct TYPE_4__ {struct httpd_req_aux* aux; } ;
struct httpd_data {TYPE_1__ hd_req; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int CONFIG_HTTPD_PURGE_BUF_LEN ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LOG_DEBUG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char*,int) ; 

esp_err_t FUNC6(struct httpd_data *hd)
{
    httpd_req_t *r = &hd->hd_req;
    struct httpd_req_aux *ra = r->aux;

    /* Finish off reading any pending/leftover data */
    while (ra->remaining_len) {
        /* Any length small enough not to overload the stack, but large
         * enough to finish off the buffers fast */
        char dummy[CONFIG_HTTPD_PURGE_BUF_LEN];
        int recv_len = FUNC3(sizeof(dummy), ra->remaining_len);
        recv_len = FUNC5(r, dummy, recv_len);
        if (recv_len < 0) {
            FUNC4(r);
            return ESP_FAIL;
        }

        FUNC0(TAG, FUNC2("purging data size : %d bytes"), recv_len);

#ifdef CONFIG_HTTPD_LOG_PURGE_DATA
        /* Enabling this will log discarded binary HTTP content data at
         * Debug level. For large content data this may not be desirable
         * as it will clutter the log */
        ESP_LOGD(TAG, "================= PURGED DATA =================");
        ESP_LOG_BUFFER_HEX_LEVEL(TAG, dummy, recv_len, ESP_LOG_DEBUG);
        ESP_LOGD(TAG, "===============================================");
#endif
    }

    FUNC4(r);
    return ESP_OK;
}