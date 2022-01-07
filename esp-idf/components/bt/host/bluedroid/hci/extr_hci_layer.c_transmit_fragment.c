
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int serial_data_type_t ;
struct TYPE_6__ {int (* transmit_data ) (int ,scalar_t__,int ) ;} ;
struct TYPE_5__ {scalar_t__ event; int len; scalar_t__ offset; scalar_t__ data; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ MSG_EVT_MASK ;
 scalar_t__ MSG_STACK_TO_HC_HCI_CMD ;
 int event_to_data_type (scalar_t__) ;
 TYPE_4__* hal ;
 int osi_free (TYPE_1__*) ;
 int stub1 (int ,scalar_t__,int ) ;

__attribute__((used)) static void transmit_fragment(BT_HDR *packet, bool send_transmit_finished)
{
    uint16_t event = packet->event & MSG_EVT_MASK;
    serial_data_type_t type = event_to_data_type(event);

    hal->transmit_data(type, packet->data + packet->offset, packet->len);

    if (event != MSG_STACK_TO_HC_HCI_CMD && send_transmit_finished) {
        osi_free(packet);
    }
}
