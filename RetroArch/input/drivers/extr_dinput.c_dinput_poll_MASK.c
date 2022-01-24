#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dinput_input {TYPE_1__* joypad; scalar_t__ mouse_y; scalar_t__ mouse_x; scalar_t__ mouse_b5; scalar_t__ mouse_b4; scalar_t__ mouse_m; scalar_t__ mouse_r; scalar_t__ mouse_l; int /*<<< orphan*/  mouse_rel_y; int /*<<< orphan*/  mouse_rel_x; scalar_t__ mouse; TYPE_3__* state; scalar_t__ keyboard; } ;
typedef  int /*<<< orphan*/  mouse_state ;
struct TYPE_10__ {scalar_t__* rgbButtons; int /*<<< orphan*/  lY; int /*<<< orphan*/  lX; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* poll ) () ;} ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_3__ DIMOUSESTATE2 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static void FUNC10(void *data)
{
   struct dinput_input *di = (struct dinput_input*)data;

   if (!di)
      return;

   FUNC6(di->state, 0, sizeof(di->state));
   if (di->keyboard)
   {
      if (FUNC0(FUNC3(
                  di->keyboard, sizeof(di->state), di->state)))
      {
         FUNC2(di->keyboard);
         if (FUNC0(FUNC3(
                     di->keyboard, sizeof(di->state), di->state)))
            FUNC6(di->state, 0, sizeof(di->state));
      }
   }

   if (di->mouse)
   {
      POINT point;
      DIMOUSESTATE2 mouse_state;
      
      point.x = 0;
      point.y = 0;

      FUNC6(&mouse_state, 0, sizeof(mouse_state));

      if (FUNC0(FUNC3(
                  di->mouse, sizeof(mouse_state), &mouse_state)))
      {
         FUNC2(di->mouse);
         if (FUNC0(FUNC3(
                     di->mouse, sizeof(mouse_state), &mouse_state)))
            FUNC6(&mouse_state, 0, sizeof(mouse_state));
      }

      di->mouse_rel_x = mouse_state.lX;
      di->mouse_rel_y = mouse_state.lY;

      if (!mouse_state.rgbButtons[0])
         FUNC8();
      if (FUNC5())
         di->mouse_l  = 0;
      else
         di->mouse_l  = mouse_state.rgbButtons[0];
      di->mouse_r     = mouse_state.rgbButtons[1];
      di->mouse_m     = mouse_state.rgbButtons[2];
      di->mouse_b4    = mouse_state.rgbButtons[3];
      di->mouse_b5    = mouse_state.rgbButtons[4];

      /* No simple way to get absolute coordinates
       * for RETRO_DEVICE_POINTER. Just use Win32 APIs. */
      FUNC1(&point);
      FUNC4((HWND)FUNC9(), &point);
      di->mouse_x = point.x;
      di->mouse_y = point.y;
   }

   if (di->joypad)
      di->joypad->poll();
}