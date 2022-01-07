
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hid_deinit (int *) ;
 int hid_instance ;
 int hidpad_ready ;

__attribute__((used)) static void hidpad_destroy(void)
{
   hidpad_ready = 0;

   hid_deinit(&hid_instance);
}
