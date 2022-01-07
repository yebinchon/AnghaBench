
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int id; int sec_ver; TYPE_2__* pop; } ;
typedef TYPE_1__ session_t ;
struct TYPE_7__ {int len; int const* data; } ;
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
 int strlen (char const*) ;
 scalar_t__ test_protocomm (TYPE_1__*) ;

__attribute__((used)) static esp_err_t test_security1 (void)
{
    ESP_LOGI(TAG, "Starting Sec1 test");

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

    session->id = 7;
    session->sec_ver = 1;
    session->pop = &pop;

    if (test_protocomm (session) != ESP_OK) {
        ESP_LOGE(TAG, "Sec1 test failed");
        free(session);
        return ESP_FAIL;
    }

    ESP_LOGI(TAG, "Sec1 test successful");
    free(session);
    return ESP_OK;
}
