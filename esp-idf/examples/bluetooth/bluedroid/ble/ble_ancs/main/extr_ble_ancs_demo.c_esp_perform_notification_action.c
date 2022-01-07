
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {int contol_point_handle; int conn_id; int gattc_if; } ;


 int CommandIDPerformNotificationAction ;
 int ESP_GATT_AUTH_REQ_NONE ;
 int ESP_GATT_WRITE_TYPE_RSP ;
 scalar_t__ ESP_NOTIFICATIONUID_LEN ;
 size_t PROFILE_A_APP_ID ;
 int esp_ble_gattc_write_char (int ,int ,int ,size_t,int *,int ,int ) ;
 TYPE_1__* gl_profile_tab ;
 int memcpy (int *,int *,scalar_t__) ;

void esp_perform_notification_action(uint8_t *notificationUID, uint8_t ActionID)
{
    uint8_t buffer[600] = {0};
    uint32_t index = 0;
    buffer[0] = CommandIDPerformNotificationAction;
    index ++;
    memcpy(&buffer[index], notificationUID, ESP_NOTIFICATIONUID_LEN);
    index += ESP_NOTIFICATIONUID_LEN;
    buffer[index] = ActionID;
    index ++;
    esp_ble_gattc_write_char( gl_profile_tab[PROFILE_A_APP_ID].gattc_if,
                              gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                              gl_profile_tab[PROFILE_A_APP_ID].contol_point_handle,
                              index,
                              buffer,
                              ESP_GATT_WRITE_TYPE_RSP,
                              ESP_GATT_AUTH_REQ_NONE);
}
