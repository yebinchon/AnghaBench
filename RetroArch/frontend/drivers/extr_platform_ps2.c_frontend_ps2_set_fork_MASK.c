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
typedef  enum frontend_fork { ____Placeholder_frontend_fork } frontend_fork ;

/* Variables and functions */
#define  FRONTEND_FORK_CORE 131 
#define  FRONTEND_FORK_CORE_WITH_ARGS 130 
#define  FRONTEND_FORK_NONE 129 
#define  FRONTEND_FORK_RESTART 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ps2_fork_mode ; 

__attribute__((used)) static bool FUNC1(enum frontend_fork fork_mode)
{
   switch (fork_mode)
   {
      case FRONTEND_FORK_CORE:
         FUNC0("FRONTEND_FORK_CORE\n");
         ps2_fork_mode  = fork_mode;
         break;
      case FRONTEND_FORK_CORE_WITH_ARGS:
         FUNC0("FRONTEND_FORK_CORE_WITH_ARGS\n");
         ps2_fork_mode  = fork_mode;
         break;
      case FRONTEND_FORK_RESTART:
         FUNC0("FRONTEND_FORK_RESTART\n");
         /* NOTE: We don't implement Salamander, so just turn
          * this into FRONTEND_FORK_CORE. */
         ps2_fork_mode  = FRONTEND_FORK_CORE;
         break;
      case FRONTEND_FORK_NONE:
      default:
         return false;
   }

   return true;
}