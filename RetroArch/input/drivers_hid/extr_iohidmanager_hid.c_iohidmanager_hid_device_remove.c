
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iohidmanager_hid_adapter {size_t slot; struct iohidmanager_hid_adapter* next; struct iohidmanager_hid_adapter* buttons; struct iohidmanager_hid_adapter* axes; struct iohidmanager_hid_adapter* hats; int name; } ;
struct TYPE_2__ {int * slots; int * axes; scalar_t__* buttons; } ;
typedef TYPE_1__ iohidmanager_hid_t ;
typedef struct iohidmanager_hid_adapter apple_input_rec_t ;
typedef int IOReturn ;


 size_t MAX_USERS ;
 int free (struct iohidmanager_hid_adapter*) ;
 scalar_t__ hid_driver_get_data () ;
 int input_autoconfigure_disconnect (size_t,int ) ;
 int memset (int ,int ,int) ;
 int pad_connection_pad_deinit (int *,size_t) ;

__attribute__((used)) static void iohidmanager_hid_device_remove(void *data,
      IOReturn result, void* sender)
{
   struct iohidmanager_hid_adapter *adapter =
      (struct iohidmanager_hid_adapter*)data;
   iohidmanager_hid_t *hid = (iohidmanager_hid_t*)
      hid_driver_get_data();

   if (hid && adapter && (adapter->slot < MAX_USERS))
   {
      input_autoconfigure_disconnect(adapter->slot, adapter->name);

      hid->buttons[adapter->slot] = 0;
      memset(hid->axes[adapter->slot], 0, sizeof(hid->axes));

      pad_connection_pad_deinit(&hid->slots[adapter->slot], adapter->slot);
   }

   if (adapter)
   {
      apple_input_rec_t* tmp = ((void*)0);
      while (adapter->hats != ((void*)0))
      {
          tmp = adapter->hats;
          adapter->hats = adapter->hats->next;
          free(tmp);
      }

      while (adapter->axes != ((void*)0))
      {
          tmp = adapter->axes;
          adapter->axes = adapter->axes->next;
          free(tmp);
      }

      while (adapter->buttons != ((void*)0))
      {
          tmp = adapter->buttons;
          adapter->buttons = adapter->buttons->next;
          free(tmp);
      }
      free(adapter);
   }
}
