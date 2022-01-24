#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct js_event {scalar_t__ type; size_t number; int value; } ;
struct TYPE_3__ {int fd; size_t axiscount; int* axis; } ;
typedef  TYPE_1__ perlinuxjoy_struct ;

/* Variables and functions */
 scalar_t__ JS_EVENT_AXIS ; 
 int FUNC0 (struct js_event) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int THRESHOLD ; 
 int FUNC3 (int) ; 
 size_t FUNC4 (int,struct js_event*,int) ; 

__attribute__((used)) static void FUNC5(perlinuxjoy_struct * joystick)
{
   struct js_event evt;
   size_t num_read;

   if (joystick->fd == -1) return;

   while ((num_read = FUNC4(joystick->fd, &evt, sizeof(struct js_event))) > 0)
   {
      if (evt.type == JS_EVENT_AXIS)
      {
         int initvalue;
         int disp;
         u8 axis = evt.number;

         if (axis >= joystick->axiscount) return;

         initvalue = joystick->axis[axis];
         disp = FUNC3(initvalue - evt.value);
         if (disp < THRESHOLD) evt.value = 0;
         else if (evt.value < initvalue) evt.value = -1;
         else evt.value = 1;
      }

      if (evt.value != 0)
      {
         FUNC1(FUNC0(evt));
      }
      else
      {
         FUNC2(FUNC0(evt));
         FUNC2(0x10000 | FUNC0(evt));
      }
   }
}