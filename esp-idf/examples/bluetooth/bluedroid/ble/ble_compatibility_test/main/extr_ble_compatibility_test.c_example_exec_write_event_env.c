
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {scalar_t__* prepare_buf; int prepare_len; } ;
typedef TYPE_2__ prepare_type_env_t ;
struct TYPE_6__ {scalar_t__ exec_write_flag; } ;
struct TYPE_8__ {TYPE_1__ exec_write; } ;
typedef TYPE_3__ esp_ble_gatts_cb_param_t ;


 scalar_t__ ESP_GATT_PREP_WRITE_EXEC ;
 int ESP_LOGI (int ,char*) ;
 int EXAMPLE_TAG ;
 int free (scalar_t__*) ;
 scalar_t__* long_write ;

void example_exec_write_event_env(prepare_type_env_t *prepare_write_env, esp_ble_gatts_cb_param_t *param){
    if (param->exec_write.exec_write_flag == ESP_GATT_PREP_WRITE_EXEC && prepare_write_env->prepare_buf){
        if(prepare_write_env->prepare_len == 256) {
            bool long_write_success = 1;
            for(uint16_t i = 0; i < prepare_write_env->prepare_len; i ++) {
                if(prepare_write_env->prepare_buf[i] != long_write[i%16]) {
                    long_write_success = 0;
                    break;
                }
            }
            if(long_write_success) {
                ESP_LOGI(EXAMPLE_TAG, "(4) ***** long write success ***** \n");
            }
        }
    }else{
        ESP_LOGI(EXAMPLE_TAG,"ESP_GATT_PREP_WRITE_CANCEL");
    }
    if (prepare_write_env->prepare_buf) {
        free(prepare_write_env->prepare_buf);
        prepare_write_env->prepare_buf = ((void*)0);
    }
    prepare_write_env->prepare_len = 0;
}
