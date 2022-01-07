
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_8__ {int driver; } ;
typedef TYPE_1__ wiiu_attach_event ;
struct TYPE_9__ {int state; int driver; int * hid; } ;
typedef TYPE_2__ wiiu_adapter_t ;


 int ADAPTER_STATE_NEW ;
 int RARCH_ERR (char*) ;
 int delete_adapter (TYPE_2__*) ;
 TYPE_2__* new_adapter (TYPE_1__*) ;
 int synchronized_add_to_adapters_list (TYPE_2__*) ;

__attribute__((used)) static void wiiu_hid_attach(wiiu_hid_t *hid, wiiu_attach_event *event)
{
   wiiu_adapter_t *adapter = new_adapter(event);

   if (!adapter)
   {
      RARCH_ERR("[hid]: Failed to allocate adapter.\n");
      goto error;
   }

   adapter->hid = hid;
   adapter->driver = event->driver;
   adapter->state = ADAPTER_STATE_NEW;

   synchronized_add_to_adapters_list(adapter);

   return;

error:
   delete_adapter(adapter);
}
