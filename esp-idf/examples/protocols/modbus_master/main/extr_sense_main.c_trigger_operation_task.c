
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {float max; float min; scalar_t__ opt1; } ;
struct TYPE_5__ {scalar_t__ timestamp; scalar_t__ param_units; int * param_key; TYPE_1__ param_opts; int * instance_ptr; int member_0; } ;
typedef TYPE_2__ characteristic_descriptor_t ;


 int CID_RELAY_P1 ;
 int CID_RELAY_P2 ;
 int ESP_ERROR_CHECK_WITHOUT_ABORT (int ) ;
 int ESP_LOGE (int ,char*,int,char*,char*,int,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 scalar_t__ MODBUS_VALUE_UPDATE_TIMEOUT_US ;
 int SENSE_MAIN_TAG ;
 int TIMEOUT_UPDATE_CIDS_TICS ;
 int assert (int ) ;
 scalar_t__ esp_err_to_name (scalar_t__) ;
 scalar_t__ esp_timer_get_time () ;
 int sense_modbus_get_cid_data (int,TYPE_2__*) ;
 scalar_t__ sense_modbus_read_value (int,void*) ;
 int sense_modbus_send_value (int,int*) ;
 int vTaskDelay (int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void trigger_operation_task(void *arg)
{
    float value;
    uint64_t timeout = 0;
    uint16_t temp_value = 0;
    bool alarm_state = 0;
    bool relay_state = 0;
    characteristic_descriptor_t cid_data = { 0 };

    while (1) {
        alarm_state = 0;
        for (int cid = 0; cid < (CID_RELAY_P2); cid++)
        {

            ESP_ERROR_CHECK_WITHOUT_ABORT(sense_modbus_get_cid_data(cid, &cid_data));
            assert(cid_data.param_key != ((void*)0));
            assert(cid_data.instance_ptr != ((void*)0));

            timeout = esp_timer_get_time();
            value = *(float*)cid_data.instance_ptr;

            if (((value > cid_data.param_opts.max) ||
                    (value < cid_data.param_opts.min)) &&
                    (cid != CID_RELAY_P1)) {
                alarm_state = 1;
            }
            if (timeout > (cid_data.timestamp + MODBUS_VALUE_UPDATE_TIMEOUT_US)) {


                value = 0;
                esp_err_t error = sense_modbus_read_value(cid, (void*)&value);
                if (error != ESP_OK) {
                    ESP_LOGE(SENSE_MAIN_TAG, "Update failed for cid: %u, %s(%s) = %d, %s",
                                                (uint16_t)cid,
                                                (char*)cid_data.param_key,
                                                (char*)cid_data.param_units,
                                                *(int*)cid_data.instance_ptr,
                                                (char*)esp_err_to_name(error));
                } else {

                    if (cid == CID_RELAY_P1) {

                        relay_state = (*(uint16_t*)(cid_data.instance_ptr)
                                            & (uint16_t)(cid_data.param_opts.opt1));
                        const char* relay_state_str = relay_state ? "ON" : "OFF";
                        ESP_LOGI(SENSE_MAIN_TAG, "cid: %u, (%s) = %s", (uint16_t)cid,
                                                    (char*)cid_data.param_key,
                                                    (const char*)relay_state_str);
                    } else {

                        ESP_LOGI(SENSE_MAIN_TAG, "cid: %u, %s(%s) = %.2f", (uint16_t)cid,
                                                (char*)cid_data.param_key,
                                                (char*)cid_data.param_units,
                                                (float)value);
                    }
                }
            }
        }

        if (!alarm_state) {
            if (relay_state == 1) {
                ESP_LOGI(SENSE_MAIN_TAG, "The values within the limit, then release relay.");
                temp_value = 0;


                (void)sense_modbus_send_value(CID_RELAY_P1, &temp_value);
                relay_state = 0;
            }
        } else {
            if (!relay_state) {
                ESP_LOGI(SENSE_MAIN_TAG, "The value exceeds limit, then set relay.");
                temp_value = 0x00FF;
                (void)sense_modbus_send_value(CID_RELAY_P1, &temp_value);
                relay_state = 1;
            }
        }

        vTaskDelay(TIMEOUT_UPDATE_CIDS_TICS);
    }
    vTaskDelete(((void*)0));
}
