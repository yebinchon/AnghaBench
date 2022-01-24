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
typedef  int /*<<< orphan*/  file_list_t ;
struct TYPE_2__ {int /*<<< orphan*/  match_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_MATCH_ACTION_TYPE_VIEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 TYPE_1__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC3(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   unsigned int address = 0;
   unsigned int address_mask = 0;
   unsigned int prev_val = 0;
   unsigned int curr_val = 0 ;
   FUNC0(CHEAT_MATCH_ACTION_TYPE_VIEW, cheat_manager_state.match_idx, &address, &address_mask, &prev_val, &curr_val);

   FUNC1(s, len, "Prev: %u Curr: %u", prev_val, curr_val);
   *w = 19;
   FUNC2(s2, path, len2);
}