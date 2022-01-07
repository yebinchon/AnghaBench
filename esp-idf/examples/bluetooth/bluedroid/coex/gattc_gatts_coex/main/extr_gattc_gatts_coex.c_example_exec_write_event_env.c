
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ prepare_len; int * prepare_buf; } ;
typedef TYPE_2__ prepare_type_env_t ;
struct TYPE_6__ {scalar_t__ exec_write_flag; } ;
struct TYPE_8__ {TYPE_1__ exec_write; } ;
typedef TYPE_3__ esp_ble_gatts_cb_param_t ;


 int COEX_TAG ;
 scalar_t__ ESP_GATT_PREP_WRITE_EXEC ;
 int ESP_LOGI (int ,char*) ;
 int esp_log_buffer_hex (int ,int *,scalar_t__) ;
 int free (int *) ;

__attribute__((used)) static void example_exec_write_event_env(prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param) {
    if (param->exec_write.exec_write_flag == ESP_GATT_PREP_WRITE_EXEC) {
        esp_log_buffer_hex(COEX_TAG, prepare_write_env->prepare_buf, prepare_write_env->prepare_len);
    } else {
        ESP_LOGI(COEX_TAG,"ESP_GATT_PREP_WRITE_CANCEL\n");
    }
    if (prepare_write_env->prepare_buf) {
        free(prepare_write_env->prepare_buf);
        prepare_write_env->prepare_buf = ((void*)0);
    }
    prepare_write_env->prepare_len = 0;
}
