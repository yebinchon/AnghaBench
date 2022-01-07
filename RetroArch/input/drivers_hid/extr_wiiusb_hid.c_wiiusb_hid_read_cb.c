
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * connections; } ;
typedef TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {size_t slot; int busy; scalar_t__ data; TYPE_1__* hid; } ;
typedef scalar_t__ int32_t ;


 int pad_connection_packet (int *,size_t,scalar_t__,scalar_t__) ;

__attribute__((used)) static int32_t wiiusb_hid_read_cb(int32_t size, void *data)
{
   struct wiiusb_adapter *adapter = (struct wiiusb_adapter*)data;
   wiiusb_hid_t *hid = adapter ? adapter->hid : ((void*)0);

   if (hid && hid->connections && size > 0)
      pad_connection_packet(&hid->connections[adapter->slot],
            adapter->slot, adapter->data-1, size+1);

  if (adapter)
      adapter->busy = 0;

  return size;
}
