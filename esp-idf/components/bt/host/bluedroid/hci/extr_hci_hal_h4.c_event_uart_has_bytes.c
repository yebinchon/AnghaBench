
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_queue_t ;
typedef int BT_HDR ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 int * fixed_queue_dequeue (int *,int ) ;
 int fixed_queue_is_empty (int *) ;
 int hci_hal_h4_hdl_rx_packet (int *) ;

__attribute__((used)) static void event_uart_has_bytes(fixed_queue_t *queue)
{
    BT_HDR *packet;
    while (!fixed_queue_is_empty(queue)) {
        packet = fixed_queue_dequeue(queue, FIXED_QUEUE_MAX_TIMEOUT);
        hci_hal_h4_hdl_rx_packet(packet);
    }
}
