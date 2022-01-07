
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int as_array; } ;
typedef TYPE_1__ bt_event_mask_t ;
typedef int BT_HDR ;


 int ARRAY8_TO_STREAM (int*,int ) ;
 int HCI_BLE_SET_EVENT_MASK ;
 int * make_command (int ,int,int**) ;

__attribute__((used)) static BT_HDR *make_ble_set_event_mask(const bt_event_mask_t *event_mask)
{
    uint8_t *stream;
    uint8_t parameter_size = sizeof(bt_event_mask_t);
    BT_HDR *packet = make_command(HCI_BLE_SET_EVENT_MASK, parameter_size, &stream);

    ARRAY8_TO_STREAM(stream, event_mask->as_array);
    return packet;
}
