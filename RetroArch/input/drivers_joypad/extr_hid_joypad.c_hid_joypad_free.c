
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) (void*) ;} ;


 TYPE_1__* generic_hid ;
 scalar_t__ hid_driver_get_data () ;
 int stub1 (void*) ;

__attribute__((used)) static void hid_joypad_free(void)
{
   if (!generic_hid)
       return;

   if (generic_hid->free)
      generic_hid->free((void*)hid_driver_get_data());

   generic_hid = ((void*)0);
}
