
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_bits_t ;
struct TYPE_2__ {int (* get_buttons ) (void*,unsigned int,int *) ;} ;


 int BIT256_CLEAR_ALL_PTR (int *) ;
 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 int stub1 (void*,unsigned int,int *) ;

__attribute__((used)) static void hid_joypad_get_buttons(unsigned port, input_bits_t *state)
{
   if (generic_hid && generic_hid->get_buttons)
      generic_hid->get_buttons((void*)hid_driver_get_data(), port, state);
   else
      BIT256_CLEAR_ALL_PTR(state);
}
