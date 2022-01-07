
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int16_t ;
struct TYPE_2__ {int (* axis ) (void*,unsigned int,int ) ;} ;


 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 int stub1 (void*,unsigned int,int ) ;

__attribute__((used)) static int16_t hid_joypad_axis(unsigned port, uint32_t joyaxis)
{
   if (generic_hid && generic_hid->axis)
      return generic_hid->axis((void*)hid_driver_get_data(), port, joyaxis);
   return 0;
}
