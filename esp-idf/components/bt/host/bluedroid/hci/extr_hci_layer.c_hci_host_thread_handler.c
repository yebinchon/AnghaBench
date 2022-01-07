
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ command_credits; int packet_queue; int command_queue; } ;
struct TYPE_3__ {int (* fragment_and_dispatch ) (int *) ;int * (* fragment_current_packet ) () ;} ;
typedef int BT_HDR ;


 scalar_t__ esp_vhci_host_check_send_available () ;
 int fixed_queue_is_empty (int ) ;
 int fixed_queue_process (int ) ;
 TYPE_2__ hci_host_env ;
 TYPE_1__* packet_fragmenter ;
 int * stub1 () ;
 int stub2 (int *) ;

__attribute__((used)) static void hci_host_thread_handler(void *arg)
{
    if (esp_vhci_host_check_send_available()) {

        BT_HDR *pkt = packet_fragmenter->fragment_current_packet();
        if (pkt != ((void*)0)) {
            packet_fragmenter->fragment_and_dispatch(pkt);
        } else {
            if (!fixed_queue_is_empty(hci_host_env.command_queue) &&
                    hci_host_env.command_credits > 0) {
                fixed_queue_process(hci_host_env.command_queue);
            } else if (!fixed_queue_is_empty(hci_host_env.packet_queue)) {
                fixed_queue_process(hci_host_env.packet_queue);
            }
        }
    }
}
