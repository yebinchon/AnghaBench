
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int id; int sec_ver; TYPE_2__* pop; } ;
typedef TYPE_1__ session_t ;
struct TYPE_10__ {int len; int const* data; } ;
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
 scalar_t__ test_sec_endpoint (TYPE_1__*) ;

__attribute__((used)) static esp_err_t test_security1_session_overflow (void)
{
    ESP_LOGI(TAG, "Starting Security 1 session overflow test");

    const char *pop_data = "test pop";
    protocomm_security_pop_t pop = {
        .data = (const uint8_t *)pop_data,
        .len = strlen(pop_data)
    };

    session_t *session1 = calloc(1, sizeof(session_t));
    if (session1 == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session1->id = 2;
    session1->sec_ver = 1;
    session1->pop = &pop;

    session_t *session2 = calloc(1, sizeof(session_t));
    if (session2 == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating session");
        free(session1);
        return ESP_ERR_NO_MEM;
    }

    session2->id = 3;
    session2->sec_ver = 1;
    session2->pop = ((void*)0);


    if (start_test_service(1, &pop) != ESP_OK) {
        ESP_LOGE(TAG, "Error starting test");
        free(session1);
        free(session2);
        return ESP_FAIL;
    }


    if (test_new_session(session1) != ESP_OK) {
        ESP_LOGE(TAG, "Error creating new session");
        stop_test_service();
        free(session1);
        free(session2);
        return ESP_FAIL;
    }


    if (test_sec_endpoint(session1) != ESP_OK) {
        ESP_LOGE(TAG, "Error testing security endpoint");
        test_delete_session(session1);
        stop_test_service();
        free(session1);
        free(session2);
        return ESP_FAIL;
    }



    if (test_sec_endpoint(session2) == ESP_OK) {
        ESP_LOGE(TAG, "Error testing security endpoint");
        test_delete_session(session1);
        stop_test_service();
        free(session1);
        free(session2);
        return ESP_FAIL;
    }

    test_delete_session(session1);
    stop_test_service();
    free(session1);
    free(session2);

    ESP_LOGI(TAG, "Protocomm test successful");
    return ESP_OK;
}
