
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int protocomm_security_pop_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int TEST_VER_STR ;
 scalar_t__ protocomm_add_endpoint (int *,char*,int ,void*) ;
 int * protocomm_new () ;
 int protocomm_security0 ;
 int protocomm_security1 ;
 scalar_t__ protocomm_set_security (int *,char*,int *,int const*) ;
 scalar_t__ protocomm_set_version (int *,char*,int ) ;
 int * test_pc ;
 int test_priv_data ;
 int test_req_handler ;
 int * test_sec ;

__attribute__((used)) static esp_err_t start_test_service(uint8_t sec_ver, const protocomm_security_pop_t *pop)
{
    test_pc = protocomm_new();
    if (test_pc == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to create new protocomm instance");
        return ESP_FAIL;
    }

    if (sec_ver == 0) {
        if (protocomm_set_security(test_pc, "test-sec", &protocomm_security0, ((void*)0)) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to set Security0");
            return ESP_FAIL;
        }
        test_sec = &protocomm_security0;
    } else if (sec_ver == 1) {
        if (protocomm_set_security(test_pc, "test-sec", &protocomm_security1, pop) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to set Security1");
            return ESP_FAIL;
        }
        test_sec = &protocomm_security1;
    }

    if (protocomm_set_version(test_pc, "test-ver", TEST_VER_STR) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set version");
        return ESP_FAIL;
    }

    if (protocomm_add_endpoint(test_pc, "test-ep",
                               test_req_handler,
                               (void *) &test_priv_data) != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set test-ep endpoint handler");
        return ESP_FAIL;
    }
    return ESP_OK;
}
