
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* init ) (void*,int,int ) ;} ;
typedef TYPE_1__ pad_connection_interface_t ;
struct TYPE_8__ {int connected; int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_9__ {int pad_driver; int os_driver; TYPE_2__* pad_list; } ;


 int RARCH_ERR (char*) ;
 TYPE_6__ hid_instance ;
 int input_pad_connect (int,int ) ;
 int pad_connection_find_vacant_pad (TYPE_2__*) ;
 int stub1 (void*,int,int ) ;

joypad_connection_t *hid_pad_register(void *pad_handle, pad_connection_interface_t *iface)
{
   int slot;
   joypad_connection_t *result;

   if(!pad_handle)
      return ((void*)0);

   slot = pad_connection_find_vacant_pad(hid_instance.pad_list);
   if(slot < 0)
   {
      RARCH_ERR("[hid]: failed to find a vacant pad.\n");
      return ((void*)0);
   }

   result = &(hid_instance.pad_list[slot]);
   result->iface = iface;
   result->data = iface->init(pad_handle, slot, hid_instance.os_driver);
   result->connected = 1;
   input_pad_connect(slot, hid_instance.pad_driver);

   return result;
}
