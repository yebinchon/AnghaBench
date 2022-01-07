
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_12__ {int (* fragmented ) (TYPE_1__*,int) ;int (* transmit_finished ) (TYPE_1__*,int) ;} ;
struct TYPE_11__ {scalar_t__ (* get_acl_data_size_classic ) () ;scalar_t__ (* get_acl_data_size_ble ) () ;} ;
struct TYPE_10__ {scalar_t__ event; int offset; scalar_t__ len; scalar_t__ layer_specific; int * data; } ;
typedef TYPE_1__ BT_HDR ;


 scalar_t__ APPLY_CONTINUATION_FLAG (scalar_t__) ;
 scalar_t__ HCI_ACL_PREAMBLE_SIZE ;
 scalar_t__ LOCAL_BR_EDR_CONTROLLER_ID ;
 scalar_t__ MSG_EVT_MASK ;
 scalar_t__ MSG_HC_TO_STACK_L2C_SEG_XMIT ;
 scalar_t__ MSG_STACK_TO_HC_HCI_ACL ;
 int STREAM_TO_UINT16 (scalar_t__,int *) ;
 scalar_t__ SUB_EVENT (scalar_t__) ;
 int UINT16_TO_STREAM (int *,scalar_t__) ;
 int assert (int ) ;
 TYPE_9__* callbacks ;
 TYPE_8__* controller ;
 TYPE_1__* current_fragment_packet ;
 int stub1 (TYPE_1__*,int) ;
 scalar_t__ stub2 () ;
 scalar_t__ stub3 () ;
 int stub4 (TYPE_1__*,int) ;
 int stub5 (TYPE_1__*,int) ;
 int stub6 (TYPE_1__*,int) ;

__attribute__((used)) static void fragment_and_dispatch(BT_HDR *packet)
{
    uint16_t continuation_handle;
    uint16_t max_data_size, max_packet_size, remaining_length;
    uint16_t event = packet->event & MSG_EVT_MASK;
    uint8_t *stream = packet->data + packet->offset;

    assert(packet != ((void*)0));


    if (event != MSG_STACK_TO_HC_HCI_ACL) {
        callbacks->fragmented(packet, 1);
        return;
    }

    max_data_size =
        SUB_EVENT(packet->event) == LOCAL_BR_EDR_CONTROLLER_ID ?
        controller->get_acl_data_size_classic() :
        controller->get_acl_data_size_ble();

    max_packet_size = max_data_size + HCI_ACL_PREAMBLE_SIZE;
    remaining_length = packet->len;
    STREAM_TO_UINT16(continuation_handle, stream);
    continuation_handle = APPLY_CONTINUATION_FLAG(continuation_handle);
    if (remaining_length > max_packet_size) {
        current_fragment_packet = packet;
        UINT16_TO_STREAM(stream, max_data_size);
        packet->len = max_packet_size;
        callbacks->fragmented(packet, 0);
        packet->offset += max_data_size;
        remaining_length -= max_data_size;
        packet->len = remaining_length;


        stream = packet->data + packet->offset;
        UINT16_TO_STREAM(stream, continuation_handle);
        UINT16_TO_STREAM(stream, remaining_length - HCI_ACL_PREAMBLE_SIZE);

        if (packet->layer_specific) {
            packet->layer_specific--;
            if (packet->layer_specific == 0) {
                packet->event = MSG_HC_TO_STACK_L2C_SEG_XMIT;






                current_fragment_packet = ((void*)0);
                callbacks->transmit_finished(packet, 0);
                return;
            }
        }
    } else {
        current_fragment_packet = ((void*)0);
        callbacks->fragmented(packet, 1);
    }
}
