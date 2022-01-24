#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_15__ {scalar_t__ id; } ;
typedef  TYPE_1__ session_t ;
typedef  int /*<<< orphan*/  protocomm_security_pop_t ;
typedef  scalar_t__ protocomm_security_handle_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_16__ {scalar_t__ sec_ver; } ;
struct TYPE_14__ {scalar_t__ ver; } ;
typedef  TYPE_2__ SessionData ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_13__ protocomm_security1 ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static esp_err_t FUNC9(protocomm_security_handle_t handle,
                                  const protocomm_security_pop_t *pop,
                                  uint32_t session_id,
                                  const uint8_t *inbuf, ssize_t inlen,
                                  uint8_t **outbuf, ssize_t *outlen,
                                  void *priv_data)
{
    session_t *cur_session = (session_t *) handle;
    if (!cur_session) {
        FUNC0(TAG, "Invalid session context data");
        return ESP_ERR_INVALID_ARG;
    }

    if (session_id != cur_session->id) {
        FUNC0(TAG, "Invalid session ID : %d (expected %d)", session_id, cur_session->id);
        return ESP_ERR_INVALID_STATE;
    }

    SessionData *req;
    SessionData resp;
    esp_err_t ret;

    req = FUNC8(NULL, inlen, inbuf);
    if (!req) {
        FUNC0(TAG, "Unable to unpack setup_req");
        return ESP_ERR_INVALID_ARG;
    }
    if (req->sec_ver != protocomm_security1.ver) {
        FUNC0(TAG, "Security version mismatch. Closing connection");
        FUNC4(req, NULL);
        return ESP_ERR_INVALID_ARG;
    }

    FUNC6(&resp);
    ret = FUNC2(cur_session, session_id, req, &resp, pop);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Session setup error %d", ret);
        FUNC4(req, NULL);
        return ESP_FAIL;
    }

    resp.sec_ver = req->sec_ver;
    FUNC4(req, NULL);

    *outlen = FUNC5(&resp);
    *outbuf = (uint8_t *) FUNC1(*outlen);
    if (!*outbuf) {
        FUNC0(TAG, "System out of memory");
        return ESP_ERR_NO_MEM;
    }
    FUNC7(&resp, *outbuf);

    FUNC3(cur_session, session_id, &resp);
    return ESP_OK;
}