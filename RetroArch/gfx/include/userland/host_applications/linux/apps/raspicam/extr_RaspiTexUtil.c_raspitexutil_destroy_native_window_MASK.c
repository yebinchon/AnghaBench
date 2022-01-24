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
struct TYPE_3__ {scalar_t__ disp; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 scalar_t__ DISPMANX_NO_HANDLE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(RASPITEX_STATE *raspitex_state)
{
   FUNC1("%s", VCOS_FUNCTION);
   if (raspitex_state->disp != DISPMANX_NO_HANDLE)
   {
      FUNC0(raspitex_state->disp);
      raspitex_state->disp = DISPMANX_NO_HANDLE;
   }
}