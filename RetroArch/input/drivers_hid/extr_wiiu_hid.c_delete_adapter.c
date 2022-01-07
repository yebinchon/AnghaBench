
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* driver; int * driver_handle; struct TYPE_6__* tx_buffer; struct TYPE_6__* rx_buffer; } ;
typedef TYPE_2__ wiiu_adapter_t ;
struct TYPE_5__ {int (* free ) (int *) ;} ;


 int free (TYPE_2__*) ;
 int stub1 (int *) ;

__attribute__((used)) static void delete_adapter(wiiu_adapter_t *adapter)
{
   if (!adapter)
      return;

   if (adapter->rx_buffer)
   {
      free(adapter->rx_buffer);
      adapter->rx_buffer = ((void*)0);
   }
   if (adapter->tx_buffer)
   {
      free(adapter->tx_buffer);
      adapter->tx_buffer = ((void*)0);
   }
   if (adapter->driver && adapter->driver_handle) {
      adapter->driver->free(adapter->driver_handle);
      adapter->driver_handle = ((void*)0);
      adapter->driver = ((void*)0);
   }

   free(adapter);
}
