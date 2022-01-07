
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {int contol_point_handle; int conn_id; int gattc_if; } ;


 size_t CommandIDGetAppAttributes ;
 int ESP_GATT_AUTH_REQ_NONE ;
 int ESP_GATT_WRITE_TYPE_RSP ;
 size_t PROFILE_A_APP_ID ;
 int esp_ble_gattc_write_char (int ,int ,int ,size_t,size_t*,int ,int ) ;
 TYPE_1__* gl_profile_tab ;
 int memcpy (size_t*,size_t*,size_t) ;

void esp_get_app_attributes(uint8_t *appidentifier, uint16_t appidentifier_len, uint8_t num_attr, uint8_t *p_app_attrs)
{
    uint8_t buffer[600] = {0};
    uint32_t index = 0;
    buffer[0] = CommandIDGetAppAttributes;
    index ++;
    memcpy(&buffer[index], appidentifier, appidentifier_len);
    index += appidentifier_len;
    memcpy(&buffer[index], p_app_attrs, num_attr);
    index += num_attr;

    esp_ble_gattc_write_char( gl_profile_tab[PROFILE_A_APP_ID].gattc_if,
                              gl_profile_tab[PROFILE_A_APP_ID].conn_id,
                              gl_profile_tab[PROFILE_A_APP_ID].contol_point_handle,
                              index,
                              buffer,
                              ESP_GATT_WRITE_TYPE_RSP,
                              ESP_GATT_AUTH_REQ_NONE);
}
