#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t count; size_t max_size; TYPE_1__* events; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  event; } ;
typedef  int /*<<< orphan*/  EmscriptenKeyboardEvent ;
typedef  int /*<<< orphan*/  EM_BOOL ;

/* Variables and functions */
 int EMSCRIPTEN_EVENT_KEYPRESS ; 
 int /*<<< orphan*/  EM_TRUE ; 
 size_t FUNC0 (int,int) ; 
 TYPE_3__* g_rwebinput_keyboard ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static EM_BOOL FUNC4(int event_type,
   const EmscriptenKeyboardEvent *key_event, void *user_data)
{
   if (event_type == EMSCRIPTEN_EVENT_KEYPRESS)
      return EM_TRUE;

   if (g_rwebinput_keyboard->count >= g_rwebinput_keyboard->max_size)
   {
      size_t new_max = FUNC0(1, g_rwebinput_keyboard->max_size << 1);
      g_rwebinput_keyboard->events = FUNC2(g_rwebinput_keyboard->events,
         new_max * sizeof(g_rwebinput_keyboard->events[0]));
      FUNC3(g_rwebinput_keyboard->events != NULL);
      g_rwebinput_keyboard->max_size = new_max;
   }

   g_rwebinput_keyboard->events[g_rwebinput_keyboard->count].type = event_type;
   FUNC1(&g_rwebinput_keyboard->events[g_rwebinput_keyboard->count].event,
      key_event, sizeof(*key_event));
   g_rwebinput_keyboard->count++;

   return EM_TRUE;
}