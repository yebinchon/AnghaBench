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
struct TYPE_2__ {scalar_t__ ps; scalar_t__ square; scalar_t__ cross; scalar_t__ circle; scalar_t__ triangle; scalar_t__ l1; scalar_t__ r1; scalar_t__ l2; scalar_t__ r2; scalar_t__ share; scalar_t__ options; scalar_t__ l3; scalar_t__ r3; } ;
struct ps4 {TYPE_1__ btn; } ;
struct hidpad_ps4_data {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  input_bits_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RARCH_MENU_TOGGLE ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_A ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_B ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_DOWN ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_L ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_L2 ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_L3 ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_LEFT ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_R ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_R2 ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_R3 ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_RIGHT ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_SELECT ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_START ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_UP ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_X ; 
 int /*<<< orphan*/  RETRO_DEVICE_ID_JOYPAD_Y ; 
 scalar_t__ FUNC2 (struct ps4*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *data, input_bits_t* state)
{
   struct hidpad_ps4_data *device = (struct hidpad_ps4_data*)data;
   struct ps4                *rpt = device ?
      (struct ps4*)&device->data : NULL;

   if (!device || !rpt)
      return;

   FUNC0( state );

   if (rpt->btn.r3)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_R3 );
   if (rpt->btn.l3)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_L3 );
   if (rpt->btn.options)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_START );
   if ( rpt->btn.share)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_SELECT );
   if ( rpt->btn.r2)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_R2 );
   if (rpt->btn.l2)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_L2 );
   if (rpt->btn.r1)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_R );
   if (rpt->btn.l1)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_L );
   if (rpt->btn.triangle)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_X );
   if (rpt->btn.circle)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_A );
   if (rpt->btn.cross)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_B );
   if (rpt->btn.square)
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_Y );
   if ((FUNC2(rpt, RETRO_DEVICE_ID_JOYPAD_LEFT)))
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_LEFT );
   if ((FUNC2(rpt, RETRO_DEVICE_ID_JOYPAD_DOWN)))
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_DOWN );
   if ((FUNC2(rpt, RETRO_DEVICE_ID_JOYPAD_RIGHT)))
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_RIGHT );
   if ((FUNC2(rpt, RETRO_DEVICE_ID_JOYPAD_UP)))
      FUNC1( state, RETRO_DEVICE_ID_JOYPAD_UP );
   if (rpt->btn.ps)
      FUNC1( state, RARCH_MENU_TOGGLE );
}