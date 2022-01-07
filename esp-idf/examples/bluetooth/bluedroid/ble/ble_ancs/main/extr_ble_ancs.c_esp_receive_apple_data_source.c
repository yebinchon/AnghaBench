
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int BLE_ANCS_TAG ;



 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int esp_log_buffer_char (char*,int*,scalar_t__) ;
 int esp_log_buffer_hex (char*,int*,scalar_t__) ;

void esp_receive_apple_data_source(uint8_t *message, uint16_t message_len)
{

    if (!message || message_len == 0) {
        return;
    }
    uint8_t Command_id = message[0];
    switch (Command_id)
    {
        case 137: {
            uint32_t NotificationUID = (message[1]) | (message[2]<< 8) | (message[3]<< 16) | (message[4] << 24);
            uint32_t remian_attr_len = message_len - 5;
            uint8_t *attrs = &message[5];
            ESP_LOGI(BLE_ANCS_TAG, "recevice Notification Attributes response Command_id %d NotificationUID %d", Command_id, NotificationUID);
            while(remian_attr_len > 0) {
                uint8_t AttributeID = attrs[0];
                uint16_t len = attrs[1] | (attrs[2] << 8);
                if(len > (remian_attr_len -3)) {
                    ESP_LOGE(BLE_ANCS_TAG, "data error");
                    break;
                }
                switch (AttributeID)
                {
                    case 135:
                        esp_log_buffer_char("Identifier", &attrs[3], len);
                        break;
                    case 128:
                        esp_log_buffer_char("Title", &attrs[3], len);
                        break;
                    case 129:
                        esp_log_buffer_char("Subtitle", &attrs[3], len);
                        break;
                    case 133:
                        esp_log_buffer_char("Message", &attrs[3], len);
                        break;
                    case 132:
                        esp_log_buffer_char("MessageSize", &attrs[3], len);
                        break;
                    case 134:

                        esp_log_buffer_char("Date", &attrs[3], len);
                        break;
                    case 130:
                        esp_log_buffer_hex("PActionLabel", &attrs[3], len);
                        break;
                    case 131:
                        esp_log_buffer_hex("NActionLabel", &attrs[3], len);
                        break;
                    default:
                        esp_log_buffer_hex("unknownAttributeID", &attrs[3], len);
                        break;
                }

                attrs += (1 + 2 + len);
                remian_attr_len -= (1 + 2 + len);
            }

            break;
        }
        case 138:
            ESP_LOGI(BLE_ANCS_TAG, "recevice APP Attributes response");
            break;
        case 136:
            ESP_LOGI(BLE_ANCS_TAG, "recevice Perform Notification Action");
            break;
        default:
            ESP_LOGI(BLE_ANCS_TAG, "unknown Command ID");
            break;
    }
}
