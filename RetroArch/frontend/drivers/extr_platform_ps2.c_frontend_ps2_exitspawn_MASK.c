#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  FRONTEND_FORK_CORE_WITH_ARGS 129 
#define  FRONTEND_FORK_NONE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ps2_fork_mode ; 

__attribute__((used)) static void FUNC1(char *core_path, size_t core_path_size)
{
   bool should_load_game = false;
#ifndef IS_SALAMANDER
   if (ps2_fork_mode == FRONTEND_FORK_NONE)
      return;

   switch (ps2_fork_mode)
   {
      case FRONTEND_FORK_CORE_WITH_ARGS:
         should_load_game = true;
         break;
      case FRONTEND_FORK_NONE:
      default:
         break;
   }
#endif
   FUNC0(core_path, should_load_game);
}