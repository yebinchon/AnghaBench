
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctr_joypad_autodetect_add (int ) ;

__attribute__((used)) static bool ctr_joypad_init(void *data)
{
   ctr_joypad_autodetect_add(0);

   (void)data;

   return 1;
}
