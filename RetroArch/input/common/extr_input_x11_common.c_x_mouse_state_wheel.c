
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;






 int x11_mouse_hwd ;
 int x11_mouse_hwu ;
 int x11_mouse_wd ;
 int x11_mouse_wu ;

int16_t x_mouse_state_wheel(unsigned id)
{
   int16_t ret = 0;

   switch (id)
   {
      case 128:
         ret = x11_mouse_wu;
         x11_mouse_wu = 0;
         return ret;
      case 129:
         ret = x11_mouse_wd;
         x11_mouse_wd = 0;
         return ret;
      case 130:
         ret = x11_mouse_hwu;
         x11_mouse_hwu = 0;
         return ret;
      case 131:
         ret = x11_mouse_hwd;
         x11_mouse_hwd = 0;
         return ret;
   }

   return 0;
}
