
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int * pop; scalar_t__ sec_ver; } ;
typedef TYPE_1__ session_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ test_protocomm (TYPE_1__*) ;

__attribute__((used)) static esp_err_t test_security0 (void)
{
    ESP_LOGI(TAG, "Starting Sec0 test");

    session_t *session = calloc(1, sizeof(session_t));
    if (session == ((void*)0)) {
        ESP_LOGE(TAG, "Error allocating session");
        return ESP_ERR_NO_MEM;
    }

    session->id = 8;
    session->sec_ver = 0;
    session->pop = ((void*)0);

    if (test_protocomm (session) != ESP_OK) {
        ESP_LOGE(TAG, "Sec0 test failed");
        free(session);
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Sec0 test successful");
    free(session);
    return ESP_OK;
}
