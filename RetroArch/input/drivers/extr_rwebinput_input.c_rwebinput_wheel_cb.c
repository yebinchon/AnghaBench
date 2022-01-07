
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int scroll_y; int scroll_x; } ;
struct TYPE_4__ {scalar_t__ deltaY; scalar_t__ deltaX; } ;
typedef TYPE_1__ EmscriptenWheelEvent ;
typedef int EM_BOOL ;


 int EM_TRUE ;
 TYPE_3__* g_rwebinput_mouse ;

__attribute__((used)) static EM_BOOL rwebinput_wheel_cb(int event_type,
   const EmscriptenWheelEvent *wheel_event, void *user_data)
{
   (void)event_type;
   (void)user_data;

   g_rwebinput_mouse->scroll_x += wheel_event->deltaX;
   g_rwebinput_mouse->scroll_y += wheel_event->deltaY;

   return EM_TRUE;
}
