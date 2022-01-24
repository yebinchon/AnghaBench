#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {int* input_joypad_map; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_7__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPAD_EXP_GAMECUBE ; 
 int /*<<< orphan*/  WPAD_EXP_NONE ; 
 TYPE_2__* FUNC0 () ; 
 TYPE_3__ gx_joypad ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pad_type ; 

__attribute__((used)) static void FUNC4(uint8_t pad_count)
{
   settings_t *settings = FUNC0();
   int idx = settings->uints.input_joypad_map[0];

   if(pad_count < 2 && idx != 0)
   {
#ifdef HW_RVL
      pad_type[0] = WPAD_EXP_NONE;
#else
      pad_type[0] = WPAD_EXP_GAMECUBE;
#endif
      settings->uints.input_joypad_map[0] = 0;
               
      FUNC2(
            FUNC1(0),
            NULL,
            gx_joypad.ident,
            0, // port
            0,
            0
            );

      FUNC3(0, FUNC1(0));
   }
}