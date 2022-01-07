
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pop; int sec_ver; } ;
typedef TYPE_1__ session_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 scalar_t__ start_test_service (int ,int ) ;
 int stop_test_service () ;
 int test_delete_session (TYPE_1__*) ;
 scalar_t__ test_new_session (TYPE_1__*) ;
 scalar_t__ test_req_endpoint (TYPE_1__*) ;
 scalar_t__ test_sec_endpoint (TYPE_1__*) ;
 scalar_t__ test_ver_endpoint (TYPE_1__*) ;

__attribute__((used)) static esp_err_t test_protocomm (session_t *session)
{
    ESP_LOGI(TAG, "Starting Protocomm test");


    if (start_test_service(session->sec_ver, session->pop) != ESP_OK) {
        ESP_LOGE(TAG, "Error starting test");
        return ESP_FAIL;
    }


    if (test_ver_endpoint(session) != ESP_OK) {
        ESP_LOGE(TAG, "Error testing version endpoint");
        stop_test_service();
        return ESP_FAIL;
    }


    if (test_new_session(session) != ESP_OK) {
        ESP_LOGE(TAG, "Error creating new session");
        stop_test_service();
        return ESP_FAIL;
    }


    if (test_sec_endpoint(session) != ESP_OK) {
        ESP_LOGE(TAG, "Error testing security endpoint");
        test_delete_session(session);
        stop_test_service();
        return ESP_FAIL;
    }



    if (test_req_endpoint(session) != ESP_OK) {
        ESP_LOGE(TAG, "Error testing request endpoint");
        test_delete_session(session);
        stop_test_service();
        return ESP_FAIL;
    }


    test_delete_session(session);
    stop_test_service();
    ESP_LOGI(TAG, "Protocomm test successful");
    return ESP_OK;
}
