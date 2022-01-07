
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_5__ {int data; TYPE_1__* iface; } ;
typedef TYPE_2__ joypad_connection_t ;
typedef int input_bits_t ;
struct TYPE_4__ {int (* get_buttons ) (int ,int *) ;} ;


 TYPE_2__* get_pad (int *,unsigned int) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void wiiu_hid_joypad_get_buttons(void *data, unsigned slot, input_bits_t *state)
{
   joypad_connection_t *pad = get_pad((wiiu_hid_t *)data, slot);

   if (pad)
      pad->iface->get_buttons(pad->data, state);
}
