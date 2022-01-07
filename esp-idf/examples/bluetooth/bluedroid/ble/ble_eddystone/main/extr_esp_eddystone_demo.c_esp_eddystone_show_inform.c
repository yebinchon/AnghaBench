
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int version; int battery_voltage; int temperature; int adv_count; int time; } ;
struct TYPE_10__ {int tx_power; int url; } ;
struct TYPE_9__ {int ranging_data; int instance_id; int namespace_id; } ;
struct TYPE_12__ {TYPE_4__ tlm; TYPE_3__ url; TYPE_2__ uid; } ;
struct TYPE_8__ {int frame_type; } ;
struct TYPE_13__ {TYPE_5__ inform; TYPE_1__ common; } ;
typedef TYPE_6__ esp_eddystone_result_t ;


 int DEMO_TAG ;



 int ESP_LOGI (int ,char*,...) ;
 int esp_log_buffer_hex (int ,int ,int) ;

__attribute__((used)) static void esp_eddystone_show_inform(const esp_eddystone_result_t* res)
{
    switch(res->common.frame_type)
    {
        case 129: {
            ESP_LOGI(DEMO_TAG, "Eddystone UID inform:");
            ESP_LOGI(DEMO_TAG, "Measured power(RSSI at 0m distance):%d dbm", res->inform.uid.ranging_data);
            ESP_LOGI(DEMO_TAG, "EDDYSTONE_DEMO: Namespace ID:0x");
            esp_log_buffer_hex(DEMO_TAG, res->inform.uid.namespace_id, 10);
            ESP_LOGI(DEMO_TAG, "EDDYSTONE_DEMO: Instance ID:0x");
            esp_log_buffer_hex(DEMO_TAG, res->inform.uid.instance_id, 6);
            break;
        }
        case 128: {
            ESP_LOGI(DEMO_TAG, "Eddystone URL inform:");
            ESP_LOGI(DEMO_TAG, "Measured power(RSSI at 0m distance):%d dbm", res->inform.url.tx_power);
            ESP_LOGI(DEMO_TAG, "URL: %s", res->inform.url.url);
            break;
        }
        case 130: {
            ESP_LOGI(DEMO_TAG, "Eddystone TLM inform:");
            ESP_LOGI(DEMO_TAG, "version: %d", res->inform.tlm.version);
            ESP_LOGI(DEMO_TAG, "battery voltage: %d mV", res->inform.tlm.battery_voltage);
            ESP_LOGI(DEMO_TAG, "beacon temperature in degrees Celsius: %6.1f", res->inform.tlm.temperature);
            ESP_LOGI(DEMO_TAG, "adv pdu count since power-up: %d", res->inform.tlm.adv_count);
            ESP_LOGI(DEMO_TAG, "time since power-up: %d s", (res->inform.tlm.time)/10);
            break;
        }
        default:
            break;
    }
}
