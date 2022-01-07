
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_hid ;
 int input_hid_init_first () ;

__attribute__((used)) static bool hid_joypad_init(void *data)
{
   generic_hid = input_hid_init_first();
   if (!generic_hid)
       return 0;

   (void)data;

   return 1;
}
