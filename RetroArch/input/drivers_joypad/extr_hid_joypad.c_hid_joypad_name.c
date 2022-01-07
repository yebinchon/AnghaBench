
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* name ) (void*,unsigned int) ;} ;


 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 char const* stub1 (void*,unsigned int) ;

__attribute__((used)) static const char *hid_joypad_name(unsigned pad)
{
   if (generic_hid && generic_hid->name)
      return generic_hid->name((void*)hid_driver_get_data(), pad);
   return ((void*)0);
}
