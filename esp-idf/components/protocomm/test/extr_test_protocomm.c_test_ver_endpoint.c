
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ session_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int TEST_VER_STR ;
 int free (int *) ;
 scalar_t__ memcmp (int ,int *,scalar_t__) ;
 scalar_t__ protocomm_req_handle (int ,char*,int ,int *,int ,int **,scalar_t__*) ;
 scalar_t__ strlen (int ) ;
 int test_pc ;

__attribute__((used)) static esp_err_t test_ver_endpoint(session_t *session)
{
    ssize_t ver_data_len = 0;
    uint8_t *ver_data = ((void*)0);

    esp_err_t ret = protocomm_req_handle(test_pc, "test-ver", session->id,
                                         ((void*)0), 0, &ver_data, &ver_data_len);

    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "test-ver handler failed");
        return ESP_FAIL;
    }

    if (ver_data_len != strlen(TEST_VER_STR) || memcmp(TEST_VER_STR, ver_data, ver_data_len)) {
        ESP_LOGE(TAG, "incorrect response data from test-ver");
        free(ver_data);
        return ESP_FAIL;
    }
    free(ver_data);
    return ESP_OK;
}
