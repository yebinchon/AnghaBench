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
typedef  TYPE_1__ LocalCtrlMessage ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_LOG_DEBUG ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void**) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,void**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC10(uint32_t session_id, const uint8_t *inbuf, ssize_t inlen,
                                      uint8_t **outbuf, ssize_t *outlen, void *priv_data)
{
    void *temp_ctx = NULL;
    LocalCtrlMessage *req = FUNC8(NULL, inlen, inbuf);
    if (!req) {
        FUNC0(TAG, "Unable to unpack payload data");
        return ESP_ERR_INVALID_ARG;
    }

    LocalCtrlMessage resp;
    FUNC6(&resp);
    resp.msg = req->msg + 1; /* Response is request + 1 */

    esp_err_t ret = FUNC3(req, &resp, &temp_ctx);
    if (ret != ESP_OK) {
        FUNC0(TAG, "command dispatcher failed");
        FUNC2(&resp, &temp_ctx);
        FUNC4(req, NULL);
        return ESP_FAIL;
    }

    FUNC4(req, NULL);

    *outlen = FUNC5(&resp);
    if (*outlen <= 0) {
        FUNC0(TAG, "Invalid encoding for response");
        FUNC2(&resp, &temp_ctx);
        return ESP_FAIL;
    }

    *outbuf = (uint8_t *) FUNC9(*outlen);
    if (!*outbuf) {
        FUNC0(TAG, "System out of memory");
        FUNC2(&resp, &temp_ctx);
        return ESP_ERR_NO_MEM;
    }

    FUNC7(&resp, *outbuf);
    FUNC2(&resp, &temp_ctx);
    FUNC1(TAG, *outbuf, *outlen, ESP_LOG_DEBUG);
    return ESP_OK;
}