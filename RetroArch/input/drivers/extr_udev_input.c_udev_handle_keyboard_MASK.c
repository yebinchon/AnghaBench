#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xkb_handling; } ;
typedef  TYPE_1__ udev_input_t ;
typedef  int /*<<< orphan*/  udev_input_device_t ;
struct input_event {int type; int /*<<< orphan*/  value; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
#define  EV_KEY 128 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udev_key_state ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *data,
      const struct input_event *event, udev_input_device_t *dev)
{
#ifdef UDEV_XKB_HANDLING
   udev_input_t *udev = (udev_input_t*)data;
#endif
   unsigned keysym;

   switch (event->type)
   {
      case EV_KEY:
         keysym = FUNC5(event->code);
         if (event->value && FUNC6())
            FUNC1(udev_key_state, keysym);
         else
            FUNC0(udev_key_state, keysym);

#ifdef UDEV_XKB_HANDLING
         if (udev->xkb_handling && handle_xkb(keysym, event->value) == 0)
            return;
#endif

         FUNC3(event->value,
               FUNC4(keysym),
               0, 0, RETRO_DEVICE_KEYBOARD);
         break;

      default:
         break;
   }
}