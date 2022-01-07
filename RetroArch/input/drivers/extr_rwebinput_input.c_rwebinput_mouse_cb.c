
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int buttons; int delta_y; int delta_x; int y; int x; } ;
struct TYPE_4__ {int button; scalar_t__ movementY; scalar_t__ movementX; int canvasY; int canvasX; } ;
typedef TYPE_1__ EmscriptenMouseEvent ;
typedef int EM_BOOL ;


 int EMSCRIPTEN_EVENT_MOUSEDOWN ;
 int EMSCRIPTEN_EVENT_MOUSEUP ;
 int EM_TRUE ;
 TYPE_3__* g_rwebinput_mouse ;

__attribute__((used)) static EM_BOOL rwebinput_mouse_cb(int event_type,
   const EmscriptenMouseEvent *mouse_event, void *user_data)
{
   (void)user_data;

   uint8_t mask = 1 << mouse_event->button;

   g_rwebinput_mouse->x = mouse_event->canvasX;
   g_rwebinput_mouse->y = mouse_event->canvasY;
   g_rwebinput_mouse->delta_x += mouse_event->movementX;
   g_rwebinput_mouse->delta_y += mouse_event->movementY;

   if (event_type == EMSCRIPTEN_EVENT_MOUSEDOWN)
   {
      g_rwebinput_mouse->buttons |= mask;
   }
   else if (event_type == EMSCRIPTEN_EVENT_MOUSEUP)
   {
      g_rwebinput_mouse->buttons &= ~mask;
   }

   return EM_TRUE;
}
