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
typedef  int /*<<< orphan*/  httpd_ssl_config_t ;
struct TYPE_4__ {int /*<<< orphan*/  httpd; } ;
typedef  TYPE_1__ esp_local_ctrl_transport_config_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC3(esp_local_ctrl_transport_config_t *dest_config, const esp_local_ctrl_transport_config_t *src_config)
{
    if (!dest_config || !src_config || !src_config->httpd) {
        FUNC0(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }

    dest_config->httpd = FUNC1(1, sizeof(httpd_ssl_config_t));
    if (!dest_config->httpd) {
        FUNC0(TAG, "Failed to allocate memory for HTTPD transport config");
        return ESP_ERR_NO_MEM;
    }
    FUNC2(dest_config->httpd,
           src_config->httpd,
           sizeof(httpd_ssl_config_t));
    return ESP_OK;
}