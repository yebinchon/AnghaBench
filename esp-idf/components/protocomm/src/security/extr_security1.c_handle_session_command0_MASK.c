#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_22__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_18__ ;
typedef  struct TYPE_36__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_43__ {scalar_t__ state; int /*<<< orphan*/ * rand; int /*<<< orphan*/ * sym_key; int /*<<< orphan*/ * client_pubkey; int /*<<< orphan*/ * device_pubkey; } ;
typedef  TYPE_5__ session_t ;
struct TYPE_44__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_6__ protocomm_security_pop_t ;
struct TYPE_40__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_38__ {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_39__ {int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
struct TYPE_37__ {int /*<<< orphan*/  X; } ;
struct TYPE_45__ {struct TYPE_45__* sr0; int /*<<< orphan*/  payload_case; int /*<<< orphan*/  msg; TYPE_2__ device_random; TYPE_1__ device_pubkey; int /*<<< orphan*/  status; int /*<<< orphan*/  z; int /*<<< orphan*/  d; TYPE_22__ Qp; int /*<<< orphan*/  grp; TYPE_4__* sc0; TYPE_18__ Q; } ;
typedef  TYPE_7__ mbedtls_entropy_context ;
typedef  TYPE_7__ mbedtls_ecdh_context ;
typedef  TYPE_7__ mbedtls_ctr_drbg_context ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_41__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_42__ {TYPE_3__ client_pubkey; } ;
struct TYPE_36__ {TYPE_7__* sec1; int /*<<< orphan*/  proto_case; } ;
typedef  TYPE_7__ SessionResp0 ;
typedef  TYPE_11__ SessionData ;
typedef  TYPE_7__ Sec1Payload ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  MBEDTLS_ECP_DP_CURVE25519 ; 
 int PUBLIC_KEY_LEN ; 
 int /*<<< orphan*/  SEC1_MSG_TYPE__Session_Response0 ; 
 int /*<<< orphan*/  SEC1_PAYLOAD__PAYLOAD_SR0 ; 
 int /*<<< orphan*/  SESSION_DATA__PROTO_SEC1 ; 
 scalar_t__ SESSION_STATE_CMD0 ; 
 scalar_t__ SESSION_STATE_CMD1 ; 
 int /*<<< orphan*/  STATUS__Success ; 
 int SZ_RANDOM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 TYPE_7__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_22__*,int /*<<< orphan*/ *,int (*) (TYPE_7__*,int /*<<< orphan*/ *,int),TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_18__*,int (*) (TYPE_7__*,int /*<<< orphan*/ *,int),TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 int /*<<< orphan*/  mbedtls_entropy_func ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC20 (unsigned char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*) ; 

__attribute__((used)) static esp_err_t FUNC24(session_t *cur_session,
                                         uint32_t session_id,
                                         SessionData *req, SessionData *resp,
                                         const protocomm_security_pop_t *pop)
{
    FUNC0(TAG, "Request to handle setup0_command");
    Sec1Payload *in = (Sec1Payload *) req->sec1;
    esp_err_t ret;
    int mbed_err;

    if (cur_session->state != SESSION_STATE_CMD0) {
        FUNC1(TAG, "Invalid state of session %d (expected %d)", SESSION_STATE_CMD0, cur_session->state);
        return ESP_ERR_INVALID_STATE;
    }

    if (in->sc0->client_pubkey.len != PUBLIC_KEY_LEN) {
        FUNC1(TAG, "Invalid public key length");
        return ESP_ERR_INVALID_ARG;
    }

    mbedtls_ecdh_context     *ctx_server = FUNC5(sizeof(mbedtls_ecdh_context));
    mbedtls_entropy_context  *entropy    = FUNC5(sizeof(mbedtls_entropy_context));
    mbedtls_ctr_drbg_context *ctr_drbg   = FUNC5(sizeof(mbedtls_ctr_drbg_context));
    if (!ctx_server || !entropy || !ctr_drbg) {
        FUNC1(TAG, "Failed to allocate memory for mbedtls context");
        FUNC3(ctx_server);
        FUNC3(entropy);
        FUNC3(ctr_drbg);
        return ESP_ERR_NO_MEM;
    }

    FUNC13(ctx_server);
    FUNC7(ctr_drbg);
    FUNC16(entropy);

    mbed_err = FUNC9(ctr_drbg, mbedtls_entropy_func,
                                     entropy, NULL, 0);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_ctr_drbg_seed with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    mbed_err = FUNC14(&ctx_server->grp, MBEDTLS_ECP_DP_CURVE25519);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_ecp_group_load with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    mbed_err = FUNC12(&ctx_server->grp, &ctx_server->d, &ctx_server->Q,
                                       mbedtls_ctr_drbg_random, ctr_drbg);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_ecdh_gen_public with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    mbed_err = FUNC19(&ctx_server->Q.X,
                                        cur_session->device_pubkey,
                                        PUBLIC_KEY_LEN);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_write_binary with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }
    FUNC2(cur_session->device_pubkey, PUBLIC_KEY_LEN);

    FUNC21(cur_session->client_pubkey, in->sc0->client_pubkey.data, PUBLIC_KEY_LEN);

    uint8_t *dev_pubkey = cur_session->device_pubkey;
    uint8_t *cli_pubkey = cur_session->client_pubkey;
    FUNC4("Device pubkey", dev_pubkey, PUBLIC_KEY_LEN);
    FUNC4("Client pubkey", cli_pubkey, PUBLIC_KEY_LEN);

    mbed_err = FUNC17(&ctx_server->Qp.Z, 1);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_lset with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    FUNC2(cur_session->client_pubkey, PUBLIC_KEY_LEN);
    mbed_err = FUNC18(&ctx_server->Qp.X, cli_pubkey, PUBLIC_KEY_LEN);
    FUNC2(cur_session->client_pubkey, PUBLIC_KEY_LEN);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_read_binary with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    mbed_err = FUNC10(&ctx_server->grp, &ctx_server->z, &ctx_server->Qp,
                                           &ctx_server->d, mbedtls_ctr_drbg_random, ctr_drbg);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_ecdh_compute_shared with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    mbed_err = FUNC19(&ctx_server->z, cur_session->sym_key, PUBLIC_KEY_LEN);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_write_binary with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }
    FUNC2(cur_session->sym_key, PUBLIC_KEY_LEN);

    if (pop != NULL && pop->data != NULL && pop->len != 0) {
        FUNC0(TAG, "Adding proof of possession");
        uint8_t sha_out[PUBLIC_KEY_LEN];

        mbed_err = FUNC20((const unsigned char *) pop->data, pop->len, sha_out, 0);
        if (mbed_err != 0) {
            FUNC1(TAG, "Failed at mbedtls_sha256_ret with error code : -0x%x", -mbed_err);
            ret = ESP_FAIL;
            goto exit_cmd0;
        }

        for (int i = 0; i < PUBLIC_KEY_LEN; i++) {
            cur_session->sym_key[i] ^= sha_out[i];
        }
    }

    FUNC4("Shared key", cur_session->sym_key, PUBLIC_KEY_LEN);

    mbed_err = FUNC8(ctr_drbg, cur_session->rand, SZ_RANDOM);
    if (mbed_err != 0) {
        FUNC1(TAG, "Failed at mbedtls_ctr_drbg_random with error code : -0x%x", -mbed_err);
        ret = ESP_FAIL;
        goto exit_cmd0;
    }

    FUNC4("Device random", cur_session->rand, SZ_RANDOM);

    Sec1Payload *out = (Sec1Payload *) FUNC5(sizeof(Sec1Payload));
    SessionResp0 *out_resp = (SessionResp0 *) FUNC5(sizeof(SessionResp0));
    if (!out || !out_resp) {
        FUNC1(TAG, "Error allocating memory for response0");
        ret = ESP_ERR_NO_MEM;
        FUNC3(out);
        FUNC3(out_resp);
        goto exit_cmd0;
    }

    FUNC22(out);
    FUNC23(out_resp);

    out_resp->status = STATUS__Success;

    out_resp->device_pubkey.data = dev_pubkey;
    out_resp->device_pubkey.len = PUBLIC_KEY_LEN;

    out_resp->device_random.data = (uint8_t *) cur_session->rand;
    out_resp->device_random.len = SZ_RANDOM;

    out->msg = SEC1_MSG_TYPE__Session_Response0;
    out->payload_case = SEC1_PAYLOAD__PAYLOAD_SR0;
    out->sr0 = out_resp;

    resp->proto_case = SESSION_DATA__PROTO_SEC1;
    resp->sec1 = out;

    cur_session->state = SESSION_STATE_CMD1;

    FUNC0(TAG, "Session setup phase1 done");
    ret = ESP_OK;

exit_cmd0:
    FUNC11(ctx_server);
    FUNC3(ctx_server);

    FUNC6(ctr_drbg);
    FUNC3(ctr_drbg);

    FUNC15(entropy);
    FUNC3(entropy);

    return ret;
}