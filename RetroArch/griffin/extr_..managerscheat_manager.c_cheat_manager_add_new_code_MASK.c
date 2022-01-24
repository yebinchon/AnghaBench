#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int size; TYPE_1__* cheats; } ;
struct TYPE_3__ {unsigned int address; unsigned int address_mask; unsigned int memory_search_size; unsigned int value; int big_endian; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_HANDLER_TYPE_RETRO ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ cheat_manager_state ; 

bool FUNC2(unsigned int memory_search_size, unsigned int address, unsigned int address_mask,
      bool big_endian, unsigned int value)
{
   int new_size = FUNC0() + 1;

   if (!FUNC1(new_size, CHEAT_HANDLER_TYPE_RETRO))
      return false;

   cheat_manager_state.cheats[cheat_manager_state.size - 1].address = address;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].address_mask = address_mask;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].memory_search_size = memory_search_size;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].value = value;
   cheat_manager_state.cheats[cheat_manager_state.size - 1].big_endian = big_endian;

   return true;
}