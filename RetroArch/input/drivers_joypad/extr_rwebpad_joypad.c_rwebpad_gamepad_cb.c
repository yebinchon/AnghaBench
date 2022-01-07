
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ident; } ;
struct TYPE_4__ {int index; int id; int mapping; } ;
typedef TYPE_1__ EmscriptenGamepadEvent ;
typedef int EM_BOOL ;


 int EMSCRIPTEN_EVENT_GAMEPADCONNECTED ;
 int EMSCRIPTEN_EVENT_GAMEPADDISCONNECTED ;
 int EM_TRUE ;
 int input_autoconfigure_connect (int ,int *,int ,int ,unsigned int,unsigned int) ;
 int input_autoconfigure_disconnect (int ,int ) ;
 TYPE_2__ rwebpad_joypad ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static EM_BOOL rwebpad_gamepad_cb(int event_type,
   const EmscriptenGamepadEvent *gamepad_event, void *user_data)
{
   unsigned vid = 0;
   unsigned pid = 0;

   (void)event_type;
   (void)gamepad_event;
   (void)user_data;

   if (strncmp(gamepad_event->mapping, "standard",
       sizeof(gamepad_event->mapping)) == 0)
   {

      vid = 1;
      pid = 1;
   }

   if (event_type == EMSCRIPTEN_EVENT_GAMEPADCONNECTED)
      input_autoconfigure_connect(
               gamepad_event->id,
               ((void*)0),
               rwebpad_joypad.ident,
               gamepad_event->index,
               vid,
               pid);
   else if (event_type == EMSCRIPTEN_EVENT_GAMEPADDISCONNECTED)
      input_autoconfigure_disconnect(gamepad_event->index,
         rwebpad_joypad.ident);

   return EM_TRUE;
}
