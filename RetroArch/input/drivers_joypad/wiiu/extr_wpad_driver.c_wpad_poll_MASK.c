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
struct TYPE_5__ {int /*<<< orphan*/  hold; } ;
typedef  TYPE_1__ VPADStatus ;
typedef  scalar_t__ VPADReadError ;

/* Variables and functions */
 int /*<<< orphan*/  PAD_GAMEPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  analog_state ; 
 int /*<<< orphan*/  button_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(void)
{
   VPADStatus vpad;
   VPADReadError error;

   FUNC0(PAD_GAMEPAD, &vpad, 1, &error);

   if (error)
      return;

   FUNC3(&button_state, vpad.hold);
   FUNC2(analog_state, &vpad);
   FUNC4(analog_state, &button_state, &vpad);
   FUNC1(vpad.hold);
}