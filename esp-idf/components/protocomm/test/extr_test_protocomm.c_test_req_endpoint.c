
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
struct TYPE_3__ {int sec_ver; int stb; int rand; int nc_off; int ctx_aes; int id; } ;
typedef TYPE_1__ session_t ;
typedef int rand_test_data ;
typedef scalar_t__ esp_err_t ;
typedef int enc_test_data ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int free (int *) ;
 int getrandom (int *,int,int ) ;
 int hexdump (char*,int *,int) ;
 int * malloc (int) ;
 int mbedtls_aes_crypt_ctr (int *,int,int *,int ,int ,int *,int *) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ protocomm_req_handle (int ,char*,int ,int *,int,int **,int*) ;
 int test_pc ;

__attribute__((used)) static esp_err_t test_req_endpoint(session_t *session)
{
    uint32_t session_id = session->id;

    uint8_t rand_test_data[512], enc_test_data[512];
    getrandom(rand_test_data, sizeof(rand_test_data), 0);

    if (session->sec_ver == 0) {
        memcpy(enc_test_data, rand_test_data, sizeof(rand_test_data));
    }
    else if (session->sec_ver == 1) {
        mbedtls_aes_crypt_ctr(&session->ctx_aes, sizeof(rand_test_data), &session->nc_off,
                              session->rand, session->stb, rand_test_data, enc_test_data);
    }

    ssize_t verify_data_len = 0;
    uint8_t *enc_verify_data = ((void*)0);

    esp_err_t ret = protocomm_req_handle(test_pc, "test-ep", session_id,
                                         enc_test_data, sizeof(enc_test_data),
                                         &enc_verify_data, &verify_data_len);

    if (ret != ESP_OK || !verify_data_len) {
        ESP_LOGE(TAG, "test-ep handler failed");
        return ESP_FAIL;
    }

    uint8_t *verify_data = malloc(verify_data_len);
    if (!verify_data) {
        ESP_LOGE(TAG, "error allocating memory for decrypted data");
        free(enc_verify_data);
        return ESP_FAIL;
    }

    if (session->sec_ver == 0) {
        memcpy(verify_data, enc_verify_data, verify_data_len);
    }
    else if (session->sec_ver == 1) {
        mbedtls_aes_crypt_ctr(&session->ctx_aes, verify_data_len, &session->nc_off,
                              session->rand, session->stb, enc_verify_data, verify_data);
    }
    free(enc_verify_data);

    hexdump("Sent data", rand_test_data, sizeof(rand_test_data));
    hexdump("Recv data", verify_data, verify_data_len);

    ESP_LOGI(TAG, "verify data len   : %d", verify_data_len);
    ESP_LOGI(TAG, "expected data len : %d", sizeof(rand_test_data));

    if (verify_data_len != sizeof(rand_test_data)) {
        ESP_LOGE(TAG, "incorrect response length from test-ep");
        free(verify_data);
        return ESP_FAIL;
    }
    if (memcmp(rand_test_data, verify_data, verify_data_len)) {
        ESP_LOGE(TAG, "incorrect response data from test-ep");
        free(verify_data);
        return ESP_FAIL;
    }
    free(verify_data);
    return ESP_OK;
}
