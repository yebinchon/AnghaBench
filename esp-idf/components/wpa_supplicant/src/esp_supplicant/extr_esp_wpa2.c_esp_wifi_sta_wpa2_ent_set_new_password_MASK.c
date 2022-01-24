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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/ * g_wpa_new_password ; 
 int g_wpa_password_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC2 (int) ; 

esp_err_t FUNC3(const unsigned char *new_password, int len)
{
    if (len <= 0) {
        return ESP_ERR_INVALID_ARG;
    }

    if (g_wpa_new_password) {
        FUNC0(g_wpa_new_password);
        g_wpa_new_password = NULL;
    }

    g_wpa_new_password = (u8 *)FUNC2(len);
    if (g_wpa_new_password == NULL) {
        return ESP_ERR_NO_MEM;
    }

    FUNC1(g_wpa_new_password, new_password, len);
    g_wpa_password_len = len;

    return ESP_OK;
}