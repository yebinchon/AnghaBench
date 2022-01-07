
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int max_packet_size_tx; int max_packet_size_rx; int interface_index; int handle; } ;
typedef TYPE_1__ wiiu_attach_event ;
struct TYPE_7__ {int connected; int tx_size; int tx_buffer; int rx_size; int rx_buffer; int interface_index; int handle; } ;
typedef TYPE_2__ wiiu_adapter_t ;


 TYPE_2__* alloc_zeroed (int,int) ;
 int init_cachealigned_buffer (int ,int *,int *) ;

__attribute__((used)) static wiiu_adapter_t *new_adapter(wiiu_attach_event *event)
{
   wiiu_adapter_t *adapter = alloc_zeroed(32, sizeof(wiiu_adapter_t));

   if (!adapter)
      return ((void*)0);

   adapter->handle = event->handle;
   adapter->interface_index = event->interface_index;
   init_cachealigned_buffer(event->max_packet_size_rx, &adapter->rx_buffer, &adapter->rx_size);
   init_cachealigned_buffer(event->max_packet_size_tx, &adapter->tx_buffer, &adapter->tx_size);
   adapter->connected = 1;

   return adapter;
}
