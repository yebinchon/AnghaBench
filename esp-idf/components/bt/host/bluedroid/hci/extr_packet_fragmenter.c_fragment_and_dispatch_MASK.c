#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* fragmented ) (TYPE_1__*,int) ;int /*<<< orphan*/  (* transmit_finished ) (TYPE_1__*,int) ;} ;
struct TYPE_11__ {scalar_t__ (* get_acl_data_size_classic ) () ;scalar_t__ (* get_acl_data_size_ble ) () ;} ;
struct TYPE_10__ {scalar_t__ event; int offset; scalar_t__ len; scalar_t__ layer_specific; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ HCI_ACL_PREAMBLE_SIZE ; 
 scalar_t__ LOCAL_BR_EDR_CONTROLLER_ID ; 
 scalar_t__ MSG_EVT_MASK ; 
 scalar_t__ MSG_HC_TO_STACK_L2C_SEG_XMIT ; 
 scalar_t__ MSG_STACK_TO_HC_HCI_ACL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_9__* callbacks ; 
 TYPE_8__* controller ; 
 TYPE_1__* current_fragment_packet ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC11(BT_HDR *packet)
{
    uint16_t continuation_handle;
    uint16_t max_data_size, max_packet_size, remaining_length;
    uint16_t event = packet->event & MSG_EVT_MASK;
    uint8_t *stream = packet->data + packet->offset;

    FUNC4(packet != NULL);

    // We only fragment ACL packets
    if (event != MSG_STACK_TO_HC_HCI_ACL) {
        callbacks->fragmented(packet, true);
        return;
    }

    max_data_size =
        FUNC2(packet->event) == LOCAL_BR_EDR_CONTROLLER_ID ?
        controller->get_acl_data_size_classic() :
        controller->get_acl_data_size_ble();

    max_packet_size = max_data_size + HCI_ACL_PREAMBLE_SIZE;
    remaining_length = packet->len;
    FUNC1(continuation_handle, stream);
    continuation_handle = FUNC0(continuation_handle);
    if (remaining_length > max_packet_size) {
        current_fragment_packet = packet;
        FUNC3(stream, max_data_size);
        packet->len = max_packet_size;
        callbacks->fragmented(packet, false);
        packet->offset += max_data_size;
        remaining_length -= max_data_size;
        packet->len = remaining_length;

        // Write the ACL header for the next fragment
        stream = packet->data + packet->offset;
        FUNC3(stream, continuation_handle);
        FUNC3(stream, remaining_length - HCI_ACL_PREAMBLE_SIZE);
        // Apparently L2CAP can set layer_specific to a max number of segments to transmit
        if (packet->layer_specific) {
            packet->layer_specific--;
            if (packet->layer_specific == 0) {
                packet->event = MSG_HC_TO_STACK_L2C_SEG_XMIT;

                /* The remain packet will send back to the l2cap layer when controller buffer is not enough
                   current_fragment_packet must be NULL, otherwise hci_host_thread_handler() will
                   connitue handle the remain packet. then the remain packet will be freed.
                */

                current_fragment_packet = NULL;
                callbacks->transmit_finished(packet, false);
                return;
            }
        }
    } else {
        current_fragment_packet = NULL;
        callbacks->fragmented(packet, true);
    }
}