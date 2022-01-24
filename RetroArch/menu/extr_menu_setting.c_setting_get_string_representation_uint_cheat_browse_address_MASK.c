#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int* unsigned_integer; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
typedef  TYPE_3__ rarch_setting_t ;
struct TYPE_9__ {unsigned int browse_address; int /*<<< orphan*/  match_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_MATCH_ACTION_TYPE_BROWSE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 TYPE_5__ cheat_manager_state ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned int address      = cheat_manager_state.browse_address;
   unsigned int address_mask = 0;
   unsigned int prev_val     = 0;
   unsigned int curr_val     = 0;

   if (setting)
      FUNC2(s, len, FUNC1(MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL),
            *setting->value.target.unsigned_integer, *setting->value.target.unsigned_integer);

   FUNC0(CHEAT_MATCH_ACTION_TYPE_BROWSE, cheat_manager_state.match_idx, &address, &address_mask, &prev_val, &curr_val);

   FUNC2(s, len, "Prev: %u Curr: %u", prev_val, curr_val);

}