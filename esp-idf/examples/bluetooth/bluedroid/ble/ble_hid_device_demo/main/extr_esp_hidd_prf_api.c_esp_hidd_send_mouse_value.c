
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int8_t ;
struct TYPE_2__ {int gatt_if; } ;


 int HID_MOUSE_IN_RPT_LEN ;
 int HID_REPORT_TYPE_INPUT ;
 int HID_RPT_ID_MOUSE_IN ;
 int hid_dev_send_report (int ,int ,int ,int ,int,scalar_t__*) ;
 TYPE_1__ hidd_le_env ;

void esp_hidd_send_mouse_value(uint16_t conn_id, uint8_t mouse_button, int8_t mickeys_x, int8_t mickeys_y)
{
    uint8_t buffer[HID_MOUSE_IN_RPT_LEN];

    buffer[0] = mouse_button;
    buffer[1] = mickeys_x;
    buffer[2] = mickeys_y;
    buffer[3] = 0;
    buffer[4] = 0;

    hid_dev_send_report(hidd_le_env.gatt_if, conn_id,
                        HID_RPT_ID_MOUSE_IN, HID_REPORT_TYPE_INPUT, HID_MOUSE_IN_RPT_LEN, buffer);
    return;
}
