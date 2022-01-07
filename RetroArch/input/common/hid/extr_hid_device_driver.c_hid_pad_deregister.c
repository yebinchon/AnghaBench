
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int connected; TYPE_1__* iface; int * data; } ;
typedef TYPE_2__ joypad_connection_t ;
struct TYPE_4__ {int (* deinit ) (int *) ;} ;


 int stub1 (int *) ;

void hid_pad_deregister(joypad_connection_t *pad)
{
   if(!pad)
      return;

   if(pad->data) {
      pad->iface->deinit(pad->data);
      pad->data = ((void*)0);
   }

   pad->iface = ((void*)0);
   pad->connected = 0;
}
