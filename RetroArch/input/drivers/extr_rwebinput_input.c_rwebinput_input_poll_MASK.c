#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* joypad; int /*<<< orphan*/  mouse; } ;
typedef  TYPE_2__ rwebinput_input_t ;
struct TYPE_10__ {size_t count; int /*<<< orphan*/ * events; } ;
struct TYPE_9__ {double scroll_x; double scroll_y; scalar_t__ delta_y; scalar_t__ delta_x; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* poll ) () ;} ;

/* Variables and functions */
 TYPE_6__* g_rwebinput_keyboard ; 
 TYPE_4__* g_rwebinput_mouse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *data)
{
   size_t i;
   rwebinput_input_t *rwebinput = (rwebinput_input_t*)data;

   for (i = 0; i < g_rwebinput_keyboard->count; i++)
      FUNC1(rwebinput,
         &g_rwebinput_keyboard->events[i]);
   g_rwebinput_keyboard->count = 0;

   FUNC0(&rwebinput->mouse, g_rwebinput_mouse, sizeof(*g_rwebinput_mouse));
   g_rwebinput_mouse->delta_x = g_rwebinput_mouse->delta_y = 0;
   g_rwebinput_mouse->scroll_x = g_rwebinput_mouse->scroll_y = 0.0;

	if (rwebinput->joypad)
		rwebinput->joypad->poll();
}