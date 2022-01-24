#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {int /*<<< orphan*/  X; } ;
struct TYPE_11__ {TYPE_8__ Q; int /*<<< orphan*/  d; int /*<<< orphan*/  grp; } ;
struct TYPE_10__ {scalar_t__ sec_ver; int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; TYPE_7__ ctx_client; int /*<<< orphan*/  client_pubkey; scalar_t__ weak; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ session_t ;
typedef  int esp_err_t ;
typedef  int /*<<< orphan*/  SessionData ;

/* Variables and functions */
 int ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MBEDTLS_ECP_DP_CURVE25519 ; 
 int /*<<< orphan*/  PUBLIC_KEY_LEN ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_entropy_func ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_pc ; 
 int FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC26 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC27(session_t *session)
{
    if (session->sec_ver == 0) {
        return ESP_OK;
    }

    uint32_t session_id = session->id;

    int ret = ESP_FAIL;
    SessionData req;
    SessionData *resp;
    ssize_t  inlen = 0;
    uint8_t *inbuf = NULL;
    ssize_t  outlen = 0;
    uint8_t *outbuf = NULL;

    FUNC11(&session->ctx_client);
    FUNC7(&session->ctr_drbg);

    FUNC14(&session->entropy);
    ret = FUNC8(&session->ctr_drbg, mbedtls_entropy_func,
                                &session->entropy, NULL, 0);
    if (ret != 0) {
        FUNC0(TAG, "Failed at mbedtls_ctr_drbg_seed with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    ret = FUNC12(&session->ctx_client.grp, MBEDTLS_ECP_DP_CURVE25519);
    if (ret != 0) {
        FUNC0(TAG, "Failed at mbedtls_ecp_group_load with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    ret = FUNC10(&session->ctx_client.grp,
                                  &session->ctx_client.d,
                                  &session->ctx_client.Q,
                                  mbedtls_ctr_drbg_random,
                                  &session->ctr_drbg);
    if (ret != 0) {
        FUNC0(TAG, "Failed at mbedtls_ecdh_gen_public with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    if (session->weak) {
        /* Read zero client public key */
        ret = FUNC15(&session->ctx_client.Q.X,
                                      session->client_pubkey,
                                      PUBLIC_KEY_LEN);
        if (ret != 0) {
            FUNC0(TAG, "Failed at mbedtls_mpi_read_binary with error code : %d", ret);
            goto abort_test_sec_endpoint;
        }
    }
    ret = FUNC16(&session->ctx_client.Q.X,
                                   session->client_pubkey,
                                   PUBLIC_KEY_LEN);
    if (ret != 0) {
        FUNC0(TAG, "Failed at mbedtls_mpi_write_binary with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }
    FUNC3(session->client_pubkey, PUBLIC_KEY_LEN);

    /*********** Transaction0 = SessionCmd0 + SessionResp0 ****************/
    FUNC22(&req);
    if (FUNC17(session, &req) != ESP_OK) {
        FUNC0(TAG, "Failed in prepare_command0");
        goto abort_test_sec_endpoint;
    }

    inlen = FUNC21(&req);
    inbuf = (uint8_t *) FUNC5(inlen);
    if (!inbuf) {
        FUNC0(TAG, "Failed to allocate inbuf");
        goto abort_test_sec_endpoint;
    }

    FUNC23(&req, inbuf);
    FUNC1(&req);

    outlen = 0;
    outbuf = NULL;
    ret = FUNC19(test_pc, "test-sec", session_id,
                               inbuf, inlen, &outbuf, &outlen);

    FUNC4(inbuf);
    if (ret != ESP_OK) {
        FUNC0(TAG, "test-sec handler failed");
        FUNC4(outbuf);
        goto abort_test_sec_endpoint;
    }

    resp = FUNC24(NULL, outlen, outbuf);
    FUNC4(outbuf);
    if (!resp) {
        FUNC0(TAG, "Unable to unpack SessionResp0");
        goto abort_test_sec_endpoint;
    }

    if (FUNC25(session, resp) != ESP_OK) {
        FUNC0(TAG, "Invalid response 0");
        FUNC20(resp, NULL);
        goto abort_test_sec_endpoint;
    }

    FUNC20(resp, NULL);

    /*********** Transaction1 = SessionCmd1 + SessionResp1 ****************/
    FUNC22(&req);
    if (FUNC18(session, &req) != ESP_OK) {
        FUNC0(TAG, "Failed in prepare_command1");
        goto abort_test_sec_endpoint;
    }

    inlen = FUNC21(&req);
    inbuf = (uint8_t *) FUNC5(inlen);
    if (!inbuf) {
        FUNC0(TAG, "Failed to allocate inbuf");
        goto abort_test_sec_endpoint;
    }

    FUNC23(&req, inbuf);
    FUNC2(&req);

    outlen = 0;
    outbuf = NULL;
    ret = FUNC19(test_pc, "test-sec", session_id,
                               inbuf, inlen, &outbuf, &outlen);

    FUNC4(inbuf);
    if (ret != ESP_OK) {
        FUNC0(TAG, "test-sec handler failed");
        FUNC4(outbuf);
        goto abort_test_sec_endpoint;
    }

    resp = FUNC24(NULL, outlen, outbuf);
    FUNC4(outbuf);
    if (!resp) {
        FUNC0(TAG, "Unable to unpack SessionResp0");
        goto abort_test_sec_endpoint;
    }

    if (FUNC26(session, resp) != ESP_OK) {
        FUNC0(TAG, "Invalid response 1");
        FUNC20(resp, NULL);
        goto abort_test_sec_endpoint;
    }

    FUNC20(resp, NULL);
    FUNC9(&session->ctx_client);
    FUNC6(&session->ctr_drbg);
    FUNC13(&session->entropy);

    return ESP_OK;

abort_test_sec_endpoint:

    FUNC9(&session->ctx_client);
    FUNC6(&session->ctr_drbg);
    FUNC13(&session->entropy);
    return ESP_FAIL;
}