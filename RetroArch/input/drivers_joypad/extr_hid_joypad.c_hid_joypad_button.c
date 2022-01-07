
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int (* button ) (void*,unsigned int,int ) ;} ;


 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 int stub1 (void*,unsigned int,int ) ;

__attribute__((used)) static bool hid_joypad_button(unsigned port, uint16_t joykey)
{
   if (generic_hid && generic_hid->button)
      return generic_hid->button((void*)hid_driver_get_data(), port, joykey);
   return 0;
}
