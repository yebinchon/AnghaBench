
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int joypad_connection_t ;
struct TYPE_3__ {int ** pads; } ;
typedef TYPE_1__ hid_wiiu_gca_instance_t ;


 int hid_pad_deregister (int *) ;

__attribute__((used)) static void wiiu_gca_unregister_pad(hid_wiiu_gca_instance_t *instance, int slot)
{
   if(!instance || slot < 0 || slot >= 4 || instance->pads[slot] == ((void*)0))
      return;

   joypad_connection_t *pad = instance->pads[slot];
   instance->pads[slot] = ((void*)0);

   hid_pad_deregister(pad);
}
