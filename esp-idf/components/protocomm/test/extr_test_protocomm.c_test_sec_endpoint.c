
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_12__ {int X; } ;
struct TYPE_11__ {TYPE_8__ Q; int d; int grp; } ;
struct TYPE_10__ {scalar_t__ sec_ver; int entropy; int ctr_drbg; TYPE_7__ ctx_client; int client_pubkey; scalar_t__ weak; int id; } ;
typedef TYPE_1__ session_t ;
typedef int esp_err_t ;
typedef int SessionData ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_OK ;
 int MBEDTLS_ECP_DP_CURVE25519 ;
 int PUBLIC_KEY_LEN ;
 int TAG ;
 int cleanup_command0 (int *) ;
 int cleanup_command1 (int *) ;
 int flip_endian (int ,int ) ;
 int free (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 int mbedtls_ctr_drbg_free (int *) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_ctr_drbg_seed (int *,int ,int *,int *,int ) ;
 int mbedtls_ecdh_free (TYPE_7__*) ;
 int mbedtls_ecdh_gen_public (int *,int *,TYPE_8__*,int ,int *) ;
 int mbedtls_ecdh_init (TYPE_7__*) ;
 int mbedtls_ecp_group_load (int *,int ) ;
 int mbedtls_entropy_free (int *) ;
 int mbedtls_entropy_func ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_mpi_read_binary (int *,int ,int ) ;
 int mbedtls_mpi_write_binary (int *,int ,int ) ;
 int prepare_command0 (TYPE_1__*,int *) ;
 int prepare_command1 (TYPE_1__*,int *) ;
 int protocomm_req_handle (int ,char*,int ,int *,scalar_t__,int **,scalar_t__*) ;
 int session_data__free_unpacked (int *,int *) ;
 scalar_t__ session_data__get_packed_size (int *) ;
 int session_data__init (int *) ;
 int session_data__pack (int *,int *) ;
 int * session_data__unpack (int *,scalar_t__,int *) ;
 int test_pc ;
 int verify_response0 (TYPE_1__*,int *) ;
 int verify_response1 (TYPE_1__*,int *) ;

__attribute__((used)) static esp_err_t test_sec_endpoint(session_t *session)
{
    if (session->sec_ver == 0) {
        return ESP_OK;
    }

    uint32_t session_id = session->id;

    int ret = ESP_FAIL;
    SessionData req;
    SessionData *resp;
    ssize_t inlen = 0;
    uint8_t *inbuf = ((void*)0);
    ssize_t outlen = 0;
    uint8_t *outbuf = ((void*)0);

    mbedtls_ecdh_init(&session->ctx_client);
    mbedtls_ctr_drbg_init(&session->ctr_drbg);

    mbedtls_entropy_init(&session->entropy);
    ret = mbedtls_ctr_drbg_seed(&session->ctr_drbg, mbedtls_entropy_func,
                                &session->entropy, ((void*)0), 0);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_ctr_drbg_seed with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    ret = mbedtls_ecp_group_load(&session->ctx_client.grp, MBEDTLS_ECP_DP_CURVE25519);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_ecp_group_load with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    ret = mbedtls_ecdh_gen_public(&session->ctx_client.grp,
                                  &session->ctx_client.d,
                                  &session->ctx_client.Q,
                                  mbedtls_ctr_drbg_random,
                                  &session->ctr_drbg);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_ecdh_gen_public with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }

    if (session->weak) {

        ret = mbedtls_mpi_read_binary(&session->ctx_client.Q.X,
                                      session->client_pubkey,
                                      PUBLIC_KEY_LEN);
        if (ret != 0) {
            ESP_LOGE(TAG, "Failed at mbedtls_mpi_read_binary with error code : %d", ret);
            goto abort_test_sec_endpoint;
        }
    }
    ret = mbedtls_mpi_write_binary(&session->ctx_client.Q.X,
                                   session->client_pubkey,
                                   PUBLIC_KEY_LEN);
    if (ret != 0) {
        ESP_LOGE(TAG, "Failed at mbedtls_mpi_write_binary with error code : %d", ret);
        goto abort_test_sec_endpoint;
    }
    flip_endian(session->client_pubkey, PUBLIC_KEY_LEN);


    session_data__init(&req);
    if (prepare_command0(session, &req) != ESP_OK) {
        ESP_LOGE(TAG, "Failed in prepare_command0");
        goto abort_test_sec_endpoint;
    }

    inlen = session_data__get_packed_size(&req);
    inbuf = (uint8_t *) malloc(inlen);
    if (!inbuf) {
        ESP_LOGE(TAG, "Failed to allocate inbuf");
        goto abort_test_sec_endpoint;
    }

    session_data__pack(&req, inbuf);
    cleanup_command0(&req);

    outlen = 0;
    outbuf = ((void*)0);
    ret = protocomm_req_handle(test_pc, "test-sec", session_id,
                               inbuf, inlen, &outbuf, &outlen);

    free(inbuf);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "test-sec handler failed");
        free(outbuf);
        goto abort_test_sec_endpoint;
    }

    resp = session_data__unpack(((void*)0), outlen, outbuf);
    free(outbuf);
    if (!resp) {
        ESP_LOGE(TAG, "Unable to unpack SessionResp0");
        goto abort_test_sec_endpoint;
    }

    if (verify_response0(session, resp) != ESP_OK) {
        ESP_LOGE(TAG, "Invalid response 0");
        session_data__free_unpacked(resp, ((void*)0));
        goto abort_test_sec_endpoint;
    }

    session_data__free_unpacked(resp, ((void*)0));


    session_data__init(&req);
    if (prepare_command1(session, &req) != ESP_OK) {
        ESP_LOGE(TAG, "Failed in prepare_command1");
        goto abort_test_sec_endpoint;
    }

    inlen = session_data__get_packed_size(&req);
    inbuf = (uint8_t *) malloc(inlen);
    if (!inbuf) {
        ESP_LOGE(TAG, "Failed to allocate inbuf");
        goto abort_test_sec_endpoint;
    }

    session_data__pack(&req, inbuf);
    cleanup_command1(&req);

    outlen = 0;
    outbuf = ((void*)0);
    ret = protocomm_req_handle(test_pc, "test-sec", session_id,
                               inbuf, inlen, &outbuf, &outlen);

    free(inbuf);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "test-sec handler failed");
        free(outbuf);
        goto abort_test_sec_endpoint;
    }

    resp = session_data__unpack(((void*)0), outlen, outbuf);
    free(outbuf);
    if (!resp) {
        ESP_LOGE(TAG, "Unable to unpack SessionResp0");
        goto abort_test_sec_endpoint;
    }

    if (verify_response1(session, resp) != ESP_OK) {
        ESP_LOGE(TAG, "Invalid response 1");
        session_data__free_unpacked(resp, ((void*)0));
        goto abort_test_sec_endpoint;
    }

    session_data__free_unpacked(resp, ((void*)0));
    mbedtls_ecdh_free(&session->ctx_client);
    mbedtls_ctr_drbg_free(&session->ctr_drbg);
    mbedtls_entropy_free(&session->entropy);

    return ESP_OK;

abort_test_sec_endpoint:

    mbedtls_ecdh_free(&session->ctx_client);
    mbedtls_ctr_drbg_free(&session->ctr_drbg);
    mbedtls_entropy_free(&session->entropy);
    return ESP_FAIL;
}
