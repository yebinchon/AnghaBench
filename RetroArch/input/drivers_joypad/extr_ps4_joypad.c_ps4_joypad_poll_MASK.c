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
typedef  int int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int buttons; } ;
typedef  TYPE_1__ ScePadData ;

/* Variables and functions */
 int ORBISPAD_CIRCLE ; 
 int ORBISPAD_CROSS ; 
 int ORBISPAD_DOWN ; 
 int ORBISPAD_L1 ; 
 int ORBISPAD_L2 ; 
 int ORBISPAD_L3 ; 
 int ORBISPAD_LEFT ; 
 int ORBISPAD_OPTIONS ; 
 int ORBISPAD_R1 ; 
 int ORBISPAD_R2 ; 
 int ORBISPAD_R3 ; 
 int ORBISPAD_RIGHT ; 
 int ORBISPAD_SQUARE ; 
 int ORBISPAD_TOUCH_PAD ; 
 int ORBISPAD_TRIANGLE ; 
 int ORBISPAD_UP ; 
 int RETRO_DEVICE_ID_JOYPAD_A ; 
 int RETRO_DEVICE_ID_JOYPAD_B ; 
 int RETRO_DEVICE_ID_JOYPAD_DOWN ; 
 int RETRO_DEVICE_ID_JOYPAD_L ; 
 int RETRO_DEVICE_ID_JOYPAD_L2 ; 
 int RETRO_DEVICE_ID_JOYPAD_L3 ; 
 int RETRO_DEVICE_ID_JOYPAD_LEFT ; 
 int RETRO_DEVICE_ID_JOYPAD_R ; 
 int RETRO_DEVICE_ID_JOYPAD_R2 ; 
 int RETRO_DEVICE_ID_JOYPAD_R3 ; 
 int RETRO_DEVICE_ID_JOYPAD_RIGHT ; 
 int RETRO_DEVICE_ID_JOYPAD_SELECT ; 
 int RETRO_DEVICE_ID_JOYPAD_START ; 
 int RETRO_DEVICE_ID_JOYPAD_UP ; 
 int RETRO_DEVICE_ID_JOYPAD_X ; 
 int RETRO_DEVICE_ID_JOYPAD_Y ; 
 int FUNC0 (int) ; 
 TYPE_3__* ds_joypad_states ; 
 unsigned int num_players ; 
 int* pad_state ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(void)
{
   unsigned player;
   unsigned players_count = num_players;
   ScePadData buttons;

   for (player = 0; player < players_count; player++)
   {
      unsigned j, k;
      unsigned i  = player;
      unsigned p  = player;
      int ret     = FUNC1(ds_joypad_states[player].handle,&buttons);

      if (ret == 0)
      {
         int32_t state_tmp = buttons.buttons;
         pad_state[i] = 0;

         pad_state[i] |= (state_tmp & ORBISPAD_LEFT) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_LEFT) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_DOWN) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_DOWN) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_RIGHT) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_RIGHT) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_UP) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_UP) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_OPTIONS) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_START) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_TOUCH_PAD) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_SELECT) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_TRIANGLE) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_X) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_SQUARE) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_Y) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_CROSS) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_B) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_CIRCLE) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_A) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_R1) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_R) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_L1) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_L) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_R2) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_R2) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_L2) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_L2) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_R3) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_R3) : 0;
         pad_state[i] |= (state_tmp & ORBISPAD_L3) ? (FUNC0(1) << RETRO_DEVICE_ID_JOYPAD_L3) : 0;
      }
   }

}