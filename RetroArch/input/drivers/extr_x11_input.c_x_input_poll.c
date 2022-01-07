
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* joypad; int state; int display; } ;
typedef TYPE_2__ x11_input_t ;
struct TYPE_4__ {int (* poll ) () ;} ;


 int XQueryKeymap (int ,int ) ;
 int memset (int ,int ,int) ;
 int stub1 () ;
 scalar_t__ video_driver_has_focus () ;
 int x_input_poll_mouse (TYPE_2__*) ;

__attribute__((used)) static void x_input_poll(void *data)
{
   x11_input_t *x11 = (x11_input_t*)data;

   if (video_driver_has_focus())
      XQueryKeymap(x11->display, x11->state);
   else
      memset(x11->state, 0, sizeof(x11->state));

   x_input_poll_mouse(x11);

   if (x11->joypad)
      x11->joypad->poll();
}
