
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {scalar_t__ noti_attribute_id; scalar_t__ attribute_len; } ;
typedef TYPE_1__ esp_noti_attr_list_t ;
struct TYPE_5__ {int contol_point_handle; int conn_id; int gattc_if; } ;


 scalar_t__ CommandIDGetNotificationAttributes ;
 int ESP_GATT_AUTH_REQ_NONE ;
 int ESP_GATT_WRITE_TYPE_RSP ;
 scalar_t__ ESP_NOTIFICATIONUID_LEN ;
 size_t PROFILE_A_APP_ID ;
 int esp_ble_gattc_write_char (int ,int ,int ,size_t,scalar_t__*,int ,int ) ;
 TYPE_2__* gl_profile_tab ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;

void esp_get_notification_attributes(uint8_t *notificationUID, uint8_t num_attr, esp_noti_attr_list_t *p_attr)
{
    uint8_t cmd[600] = {0};
    uint32_t index = 0;
    cmd[0] = CommandIDGetNotificationAttributes;
    index ++;
    memcpy(&cmd[index], notificationUID, ESP_NOTIFICATIONUID_LEN);
    index += ESP_NOTIFICATIONUID_LEN;
    while(num_attr > 0) {
        cmd[index ++] = p_attr->noti_attribute_id;
        if (p_attr->attribute_len > 0) {
            cmd[index ++] = p_attr->attribute_len;
            cmd[index ++] = (p_attr->attribute_len << 8);
        }
        p_attr ++;
        num_attr --;
    }

    esp_ble_gattc_write_char( gl_profile_tab[PROFILE_A_APP_ID].gattc_if,
                              gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                              gl_profile_tab[PROFILE_A_APP_ID].contol_point_handle,
                              index,
                              cmd,
                              ESP_GATT_WRITE_TYPE_RSP,
                              ESP_GATT_AUTH_REQ_NONE);
}
