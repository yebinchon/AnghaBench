
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* query_pad ) (void*,unsigned int) ;} ;


 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 int stub1 (void*,unsigned int) ;

__attribute__((used)) static bool hid_joypad_query_pad(unsigned pad)
{
   if (generic_hid && generic_hid->query_pad)
      return generic_hid->query_pad((void*)hid_driver_get_data(), pad);
   return 0;
}
