
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int quit; int ctx; int hp; scalar_t__ can_hotplug; scalar_t__ slots; scalar_t__ poll_thread; } ;
typedef TYPE_2__ libusb_hid_t ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_6__ {int device; } ;


 int RARCH_ERR (char*,int ) ;
 TYPE_5__ adapters ;
 int free (TYPE_2__*) ;
 int libusb_exit (int ) ;
 int libusb_hotplug_deregister_callback (int ,int ) ;
 int pad_connection_destroy (scalar_t__) ;
 int remove_adapter (TYPE_2__*,int ) ;
 int sthread_join (scalar_t__) ;

__attribute__((used)) static void libusb_hid_free(const void *data)
{
   libusb_hid_t *hid = (libusb_hid_t*)data;

   while(adapters.next)
      if (remove_adapter(hid, adapters.next->device) == -1)
         RARCH_ERR("could not remove device %p\n",
               adapters.next->device);

   if (hid->poll_thread)
   {
      hid->quit = 1;
      sthread_join(hid->poll_thread);
   }

   if (hid->slots)
      pad_connection_destroy(hid->slots);

   if (hid->can_hotplug)
      libusb_hotplug_deregister_callback(hid->ctx, hid->hp);

   libusb_exit(hid->ctx);
   free(hid);
}
