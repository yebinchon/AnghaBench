
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_13__ {int X; int Z; } ;
struct TYPE_16__ {int z; int d; TYPE_12__ Qp; int grp; } ;
struct TYPE_19__ {int * rand; int * sym_key; TYPE_7__* pop; TYPE_3__ ctx_client; int ctr_drbg; int * device_pubkey; int * client_pubkey; } ;
typedef TYPE_6__ session_t ;
struct TYPE_20__ {scalar_t__ len; int * data; } ;
typedef TYPE_7__ protocomm_security_pop_t ;
typedef int esp_err_t ;
struct TYPE_22__ {TYPE_5__* sr0; } ;
struct TYPE_21__ {scalar_t__ proto_case; TYPE_1__* sec1; } ;
struct TYPE_17__ {scalar_t__ len; int data; } ;
struct TYPE_15__ {int len; int data; } ;
struct TYPE_18__ {TYPE_4__ device_random; TYPE_2__ device_pubkey; } ;
struct TYPE_14__ {scalar_t__ msg; } ;
typedef TYPE_8__ SessionData ;
typedef TYPE_9__ Sec1Payload ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int PUBLIC_KEY_LEN ;
 scalar_t__ SEC1_MSG_TYPE__Session_Response0 ;
 scalar_t__ SESSION_DATA__PROTO_SEC1 ;
 scalar_t__ SZ_RANDOM ;
 int TAG ;
 int flip_endian (int *,int) ;
 int hexdump (char*,int *,int) ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_ecdh_compute_shared (int *,int *,TYPE_12__*,int *,int ,int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_read_binary (int *,int *,int) ;
 int mbedtls_mpi_write_binary (int *,int *,int) ;
 int mbedtls_sha256_ret (unsigned char const*,scalar_t__,int *,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static esp_err_t verify_response0(session_t *session, SessionData *resp)
{
    if ((resp->proto_case != SESSION_DATA__PROTO_SEC1) ||
        (resp->sec1->msg != SEC1_MSG_TYPE__Session_Response0)) {
        ESP_LOGE(TAG, "Invalid response type");
        return ESP_ERR_INVALID_ARG;
    }

    int ret;
    Sec1Payload *in = (Sec1Payload *) resp->sec1;

    if (in->sr0->device_pubkey.len != PUBLIC_KEY_LEN) {
        ESP_LOGE(TAG, "Device public key length as not as expected");
        return ESP_FAIL;
    }

    if (in->sr0->device_random.len != SZ_RANDOM) {
        ESP_LOGE(TAG, "Device random data length is not as expected");
        return ESP_FAIL;
    }

    uint8_t *cli_pubkey = session->client_pubkey;
    uint8_t *dev_pubkey = session->device_pubkey;
    memcpy(session->device_pubkey, in->sr0->device_pubkey.data, in->sr0->device_pubkey.len);

    hexdump("Device pubkey", dev_pubkey, PUBLIC_KEY_LEN);
    hexdump("Client pubkey", cli_pubkey, PUBLIC_KEY_LEN);

    ret = mbedtls_mpi_lset(&session->ctx_client.Qp.Z, 1);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_mpi_lset with error code : %d", ret);
        return ESP_FAIL;
    }

    flip_endian(session->device_pubkey, PUBLIC_KEY_LEN);
    ret = mbedtls_mpi_read_binary(&session->ctx_client.Qp.X, dev_pubkey, PUBLIC_KEY_LEN);
    flip_endian(session->device_pubkey, PUBLIC_KEY_LEN);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_mpi_read_binary with error code : %d", ret);
        return ESP_FAIL;
    }

    ret = mbedtls_ecdh_compute_shared(&session->ctx_client.grp,
                                      &session->ctx_client.z,
                                      &session->ctx_client.Qp,
                                      &session->ctx_client.d,
                                      mbedtls_ctr_drbg_random,
                                      &session->ctr_drbg);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_ecdh_compute_shared with error code : %d", ret);
        return ESP_FAIL;
    }

    ret = mbedtls_mpi_write_binary(&session->ctx_client.z, session->sym_key, PUBLIC_KEY_LEN);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_mpi_write_binary with error code : %d", ret);
        return ESP_FAIL;
    }
    flip_endian(session->sym_key, PUBLIC_KEY_LEN);

    const protocomm_security_pop_t *pop = session->pop;
    if (pop != ((void*)0) && pop->data != ((void*)0) && pop->len != 0) {
        ESP_LOGD(TAG, "Adding proof of possession");
        uint8_t sha_out[PUBLIC_KEY_LEN];

        ret = mbedtls_sha256_ret((const unsigned char *) pop->data, pop->len, sha_out, 0);
        if (ret != 0) {
            ESP_LOGE(TAG, "Failed at mbedtls_sha256_ret with error code : %d", ret);
            return ESP_FAIL;
        }

        for (int i = 0; i < PUBLIC_KEY_LEN; i++) {
            session->sym_key[i] ^= sha_out[i];
        }
    }

    hexdump("Shared key", session->sym_key, PUBLIC_KEY_LEN);

    memcpy(session->rand, in->sr0->device_random.data, in->sr0->device_random.len);
    hexdump("Dev random", session->rand, sizeof(session->rand));
    return ESP_OK;
}
