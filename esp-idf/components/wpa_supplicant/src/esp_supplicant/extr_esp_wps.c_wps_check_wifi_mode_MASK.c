#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_mode_t ;

/* Variables and functions */
 int ESP_ERR_WIFI_MODE ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WIFI_MODE_AP ; 
 int /*<<< orphan*/  WIFI_MODE_NULL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 

int FUNC3(void)
{
    bool sniffer = false;
    wifi_mode_t mode;
    int ret;

    ret = FUNC0(&mode);
    if (ESP_OK != ret) {
        FUNC2(MSG_ERROR, "wps check wifi mode: failed to get wifi mode ret=%d", ret);
        return ESP_FAIL;
    }

    ret = FUNC1(&sniffer);
    if (ESP_OK != ret) {
        FUNC2(MSG_ERROR, "wps check wifi mode: failed to get sniffer mode ret=%d", ret);
        return ESP_FAIL;
    }

    if (mode == WIFI_MODE_AP || mode == WIFI_MODE_NULL || sniffer == true) {
        FUNC2(MSG_ERROR, "wps check wifi mode: wrong wifi mode=%d sniffer=%d", mode, sniffer);
        return ESP_ERR_WIFI_MODE;
    }

    return ESP_OK;
}