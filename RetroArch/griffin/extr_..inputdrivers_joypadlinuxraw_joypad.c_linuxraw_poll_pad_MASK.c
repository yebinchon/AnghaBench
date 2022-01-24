#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct linuxraw_joypad {int /*<<< orphan*/ * axes; int /*<<< orphan*/  buttons; int /*<<< orphan*/  fd; } ;
struct js_event {unsigned int type; size_t number; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
#define  JS_EVENT_AXIS 129 
#define  JS_EVENT_BUTTON 128 
 unsigned int JS_EVENT_INIT ; 
 size_t NUM_AXES ; 
 size_t NUM_BUTTONS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct js_event*,int) ; 

__attribute__((used)) static void FUNC3(struct linuxraw_joypad *pad)
{
   struct js_event event;

   while (FUNC2(pad->fd, &event, sizeof(event)) == (ssize_t)sizeof(event))
   {
      unsigned type = event.type & ~JS_EVENT_INIT;

      switch (type)
      {
         case JS_EVENT_BUTTON:
            if (event.number < NUM_BUTTONS)
            {
               if (event.value)
                  FUNC1(pad->buttons, event.number);
               else
                  FUNC0(pad->buttons, event.number);
            }
            break;

         case JS_EVENT_AXIS:
            if (event.number < NUM_AXES)
               pad->axes[event.number] = event.value;
            break;
      }
   }
}