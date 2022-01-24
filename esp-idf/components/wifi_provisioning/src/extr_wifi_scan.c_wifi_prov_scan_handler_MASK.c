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
typedef  TYPE_1__ WiFiScanPayload ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_1__*,void*) ; 

esp_err_t FUNC10(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                 uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    WiFiScanPayload *req;
    WiFiScanPayload resp;
    esp_err_t ret = ESP_OK;

    req = FUNC7(NULL, inlen, inbuf);
    if (!req) {
        FUNC1(TAG, "Unable to unpack scan message");
        return ESP_ERR_INVALID_ARG;
    }

    FUNC5(&resp);
    ret = FUNC9(req, &resp, priv_data);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Command dispatcher error %d", ret);
        ret = ESP_FAIL;
        goto exit;
    }

    resp.msg = req->msg + 1; /* Response is request + 1 */
    *outlen = FUNC4(&resp);
    if (*outlen <= 0) {
        FUNC1(TAG, "Invalid encoding for response");
        ret = ESP_FAIL;
        goto exit;
    }

    *outbuf = (uint8_t *) FUNC2(*outlen);
    if (!*outbuf) {
        FUNC1(TAG, "System out of memory");
        ret = ESP_ERR_NO_MEM;
        goto exit;
    }
    FUNC6(&resp, *outbuf);
    FUNC0(TAG, "Response packet size : %d", *outlen);
    exit:

    FUNC3(req, NULL);
    FUNC8(&resp, priv_data);
    return ret;
}