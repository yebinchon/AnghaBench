
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_ERR (char*) ;
 int hidpad_poll () ;
 int hidpad_ready ;
 int init_hid_driver () ;

__attribute__((used)) static bool hidpad_init(void *data)
{
   (void *)data;
   int i;

   if(!init_hid_driver())
   {
      RARCH_ERR("Failed to initialize HID driver.\n");
      return 0;
   }

   hidpad_poll();
   hidpad_ready = 1;

   return 1;
}
