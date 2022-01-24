#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_10__ {scalar_t__ msg; } ;
typedef  TYPE_1__ WiFiConfigPayload ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_1__*,void*) ; 

esp_err_t FUNC9(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                        uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    WiFiConfigPayload *req;
    WiFiConfigPayload resp;
    esp_err_t ret;

    req = FUNC6(NULL, inlen, inbuf);
    if (!req) {
        FUNC0(TAG, "Unable to unpack config data");
        return ESP_ERR_INVALID_ARG;
    }

    FUNC4(&resp);
    ret = FUNC8(req, &resp, priv_data);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Proto command dispatcher error %d", ret);
        return ESP_FAIL;
    }

    resp.msg = req->msg + 1; /* Response is request + 1 */
    FUNC2(req, NULL);

    *outlen = FUNC3(&resp);
    if (*outlen <= 0) {
        FUNC0(TAG, "Invalid encoding for response");
        return ESP_FAIL;
    }

    *outbuf = (uint8_t *) FUNC1(*outlen);
    if (!*outbuf) {
        FUNC0(TAG, "System out of memory");
        return ESP_ERR_NO_MEM;
    }
    FUNC5(&resp, *outbuf);
    FUNC7(&resp, priv_data);

    return ESP_OK;
}