#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
struct TYPE_16__ {int /*<<< orphan*/  z; int /*<<< orphan*/  d; TYPE_12__ Qp; int /*<<< orphan*/  grp; } ;
struct TYPE_19__ {int /*<<< orphan*/ * rand; int /*<<< orphan*/ * sym_key; TYPE_7__* pop; TYPE_3__ ctx_client; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/ * device_pubkey; int /*<<< orphan*/ * client_pubkey; } ;
typedef  TYPE_6__ session_t ;
struct TYPE_20__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_7__ protocomm_security_pop_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_22__ {TYPE_5__* sr0; } ;
struct TYPE_21__ {scalar_t__ proto_case; TYPE_1__* sec1; } ;
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int len; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {TYPE_4__ device_random; TYPE_2__ device_pubkey; } ;
struct TYPE_14__ {scalar_t__ msg; } ;
typedef  TYPE_8__ SessionData ;
typedef  TYPE_9__ Sec1Payload ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int PUBLIC_KEY_LEN ; 
 scalar_t__ SEC1_MSG_TYPE__Session_Response0 ; 
 scalar_t__ SESSION_DATA__PROTO_SEC1 ; 
 scalar_t__ SZ_RANDOM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (unsigned char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static esp_err_t FUNC10(session_t *session, SessionData *resp)
{
    if ((resp->proto_case != SESSION_DATA__PROTO_SEC1) ||
        (resp->sec1->msg  != SEC1_MSG_TYPE__Session_Response0)) {
        FUNC1(TAG, "Invalid response type");
        return ESP_ERR_INVALID_ARG;
    }

    int ret;
    Sec1Payload *in = (Sec1Payload *) resp->sec1;

    if (in->sr0->device_pubkey.len != PUBLIC_KEY_LEN) {
        FUNC1(TAG, "Device public key length as not as expected");
        return ESP_FAIL;
    }

    if (in->sr0->device_random.len != SZ_RANDOM) {
        FUNC1(TAG, "Device random data length is not as expected");
        return ESP_FAIL;
    }

    uint8_t *cli_pubkey = session->client_pubkey;
    uint8_t *dev_pubkey = session->device_pubkey;
    FUNC9(session->device_pubkey, in->sr0->device_pubkey.data, in->sr0->device_pubkey.len);

    FUNC3("Device pubkey", dev_pubkey, PUBLIC_KEY_LEN);
    FUNC3("Client pubkey", cli_pubkey, PUBLIC_KEY_LEN);

    ret = FUNC5(&session->ctx_client.Qp.Z, 1);
    if (ret != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_lset with error code : %d", ret);
        return ESP_FAIL;
    }

    FUNC2(session->device_pubkey, PUBLIC_KEY_LEN);
    ret = FUNC6(&session->ctx_client.Qp.X, dev_pubkey, PUBLIC_KEY_LEN);
    FUNC2(session->device_pubkey, PUBLIC_KEY_LEN);
    if (ret != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_read_binary with error code : %d", ret);
        return ESP_FAIL;
    }

    ret = FUNC4(&session->ctx_client.grp,
                                      &session->ctx_client.z,
                                      &session->ctx_client.Qp,
                                      &session->ctx_client.d,
                                      mbedtls_ctr_drbg_random,
                                      &session->ctr_drbg);
    if (ret != 0) {
        FUNC1(TAG, "Failed at mbedtls_ecdh_compute_shared with error code : %d", ret);
        return ESP_FAIL;
    }

    ret = FUNC7(&session->ctx_client.z, session->sym_key, PUBLIC_KEY_LEN);
    if (ret != 0) {
        FUNC1(TAG, "Failed at mbedtls_mpi_write_binary with error code : %d", ret);
        return ESP_FAIL;
    }
    FUNC2(session->sym_key, PUBLIC_KEY_LEN);

    const protocomm_security_pop_t *pop = session->pop;
    if (pop != NULL && pop->data != NULL && pop->len != 0) {
        FUNC0(TAG, "Adding proof of possession");
        uint8_t sha_out[PUBLIC_KEY_LEN];

        ret = FUNC8((const unsigned char *) pop->data, pop->len, sha_out, 0);
        if (ret != 0) {
            FUNC1(TAG, "Failed at mbedtls_sha256_ret with error code : %d", ret);
            return ESP_FAIL;
        }

        for (int i = 0; i < PUBLIC_KEY_LEN; i++) {
            session->sym_key[i] ^= sha_out[i];
        }
    }

    FUNC3("Shared key", session->sym_key, PUBLIC_KEY_LEN);

    FUNC9(session->rand, in->sr0->device_random.data, in->sr0->device_random.len);
    FUNC3("Dev random", session->rand, sizeof(session->rand));
    return ESP_OK;
}