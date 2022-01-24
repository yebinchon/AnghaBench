#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ esp_err_t ;
typedef  scalar_t__ (* custom_prov_config_handler_t ) (TYPE_1__*) ;
struct TYPE_10__ {int /*<<< orphan*/  version; int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ custom_config_t ;
struct TYPE_12__ {int /*<<< orphan*/  version; int /*<<< orphan*/  info; } ;
struct TYPE_11__ {int dummy; void* status; } ;
typedef  TYPE_3__ CustomConfigResponse ;
typedef  TYPE_4__ CustomConfigRequest ;

/* Variables and functions */
 void* CUSTOM_CONFIG_STATUS__ConfigFail ; 
 void* CUSTOM_CONFIG_STATUS__ConfigSuccess ; 
 int ESP_ERR_INVALID_ARG ; 
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC8(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen, uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    CustomConfigRequest *req;
    CustomConfigResponse resp;
    custom_prov_config_handler_t app_handler_custom_config = (custom_prov_config_handler_t) priv_data;

    req = FUNC2(NULL, inlen, inbuf);
    if (!req) {
        FUNC0(TAG, "Unable to unpack config data");
        return ESP_ERR_INVALID_ARG;
    }

    FUNC4(&resp);
    resp.status = CUSTOM_CONFIG_STATUS__ConfigFail;

    if (app_handler_custom_config) {
        custom_config_t config;
        FUNC7(config.info, req->info, sizeof(config.info));
        config.version = req->version;

        esp_err_t err = app_handler_custom_config(&config);
        resp.status = (err == ESP_OK) ? CUSTOM_CONFIG_STATUS__ConfigSuccess :
                                        CUSTOM_CONFIG_STATUS__ConfigFail;
    }
    FUNC1(req, NULL);

    resp.dummy = 47;    // Set a non zero value of dummy

    *outlen = FUNC3(&resp);
    if (*outlen <= 0) {
        FUNC0(TAG, "Invalid encoding for response");
        return ESP_FAIL;
    }

    *outbuf = (uint8_t *) FUNC6(*outlen);
    if (*outbuf == NULL) {
        FUNC0(TAG, "System out of memory");
        return ESP_ERR_NO_MEM;
    }

    FUNC5(&resp, *outbuf);
    return ESP_OK;
}