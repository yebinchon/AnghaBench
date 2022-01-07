
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_5__ {int handle; } ;
typedef TYPE_1__ wiiu_attach_event ;
struct TYPE_6__ {int connected; } ;
typedef TYPE_2__ wiiu_adapter_t ;


 TYPE_2__* synchronized_lookup_adapter (int ) ;

__attribute__((used)) static void wiiu_hid_detach(wiiu_hid_t *hid, wiiu_attach_event *event)
{
   wiiu_adapter_t *adapter = synchronized_lookup_adapter(event->handle);




   if (adapter)
      adapter->connected = 0;
}
