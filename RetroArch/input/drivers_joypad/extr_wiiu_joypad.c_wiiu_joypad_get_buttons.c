
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int (* get_buttons ) (unsigned int,int *) ;} ;


 TYPE_1__** pad_drivers ;
 int stub1 (unsigned int,int *) ;
 int wiiu_joypad_query_pad (unsigned int) ;

__attribute__((used)) static void wiiu_joypad_get_buttons(unsigned pad, input_bits_t *state)
{
   if (!wiiu_joypad_query_pad(pad))
      return;

   pad_drivers[pad]->get_buttons(pad, state);
}
