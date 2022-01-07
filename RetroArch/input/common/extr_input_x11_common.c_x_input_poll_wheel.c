
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int button; } ;
typedef TYPE_1__ XButtonEvent ;


 int x11_mouse_hwd ;
 int x11_mouse_hwu ;
 int x11_mouse_wd ;
 int x11_mouse_wu ;

void x_input_poll_wheel(XButtonEvent *event, bool latch)
{
   switch (event->button)
   {
      case 4:
         x11_mouse_wu = 1;
         break;
      case 5:
         x11_mouse_wd = 1;
         break;
      case 6:

         x11_mouse_hwd = 1;
         break;
      case 7:

         x11_mouse_hwu = 1;
         break;
   }
}
