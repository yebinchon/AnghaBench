
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int id; int sec_ver; int weak; TYPE_2__* pop; } ;
typedef TYPE_1__ session_t ;
struct TYPE_11__ {int len; int const* data; } ;
typedef TYPE_2__ protocomm_security_pop_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ start_test_service (int,TYPE_2__*) ;
 int stop_test_service () ;
 int strlen (char const*) ;
 int test_delete_session (TYPE_1__*) ;
 scalar_t__ test_new_session (TYPE_1__*) ;
 scalar_t__ test_req_endpoint (TYPE_1__*) ;
 scalar_t__ test_sec_endpoint (TYPE_1__*) ;

__attribute__((used)) static esp_err_t test_security1_weak_session (void)
{
    ESP_LOGI(TAG, "Starting Security 1 weak session test");

    const char *pop_data = "test pop";
    protocomm_security_pop_t pop = {
        .data = (const uint8_t *)pop_data,
        .len = strlen(pop_data)
    };

    session_t *session = calloc(1, sizeof(session_t));
    if (session == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session->id = 6;
    session->sec_ver = 1;
    session->pop = &pop;
    session->weak = 1;


    if (start_test_service(1, &pop) != ESP_OK) {
        ESP_LOGE(TAG, "Error starting test");
        free(session);
        return ESP_FAIL;
    }


    if (test_new_session(session) != ESP_OK) {
        ESP_LOGE(TAG, "Error creating new session");
        stop_test_service();
        free(session);
        return ESP_FAIL;
    }



    if (test_sec_endpoint(session) == ESP_OK) {
        ESP_LOGE(TAG, "Error testing security endpoint");
        test_delete_session(session);
        stop_test_service();
        free(session);
        return ESP_FAIL;
    }



    if (test_req_endpoint(session) == ESP_OK) {
        ESP_LOGE(TAG, "Error testing request endpoint");
        test_delete_session(session);
        stop_test_service();
        free(session);
        return ESP_FAIL;
    }

    test_delete_session(session);
    stop_test_service();
    free(session);

    ESP_LOGI(TAG, "Protocomm test successful");
    return ESP_OK;
}
