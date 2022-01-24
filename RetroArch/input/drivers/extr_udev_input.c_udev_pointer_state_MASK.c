#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  udev_input_t ;
struct TYPE_5__ {int /*<<< orphan*/  l; } ;
typedef  TYPE_1__ udev_input_mouse_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
#define  RETRO_DEVICE_ID_POINTER_PRESSED 130 
#define  RETRO_DEVICE_ID_POINTER_X 129 
#define  RETRO_DEVICE_ID_POINTER_Y 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int16_t FUNC3(udev_input_t *udev,
      unsigned port, unsigned id, bool screen)
{
   udev_input_mouse_t *mouse = FUNC0(udev, port);

   if (!mouse)
      return 0;

   switch (id)
   {
      case RETRO_DEVICE_ID_POINTER_X:
         return FUNC1(mouse, screen);
      case RETRO_DEVICE_ID_POINTER_Y:
         return FUNC2(mouse, screen);
      case RETRO_DEVICE_ID_POINTER_PRESSED:
         return mouse->l;
   }

   return 0;
}