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
typedef  enum rarch_dir_type { ____Placeholder_rarch_dir_type } rarch_dir_type ;

/* Variables and functions */
#define  RARCH_DIR_CURRENT_SAVEFILE 133 
#define  RARCH_DIR_CURRENT_SAVESTATE 132 
#define  RARCH_DIR_NONE 131 
#define  RARCH_DIR_SAVEFILE 130 
#define  RARCH_DIR_SAVESTATE 129 
#define  RARCH_DIR_SYSTEM 128 
 int /*<<< orphan*/  current_savefile_dir ; 
 int /*<<< orphan*/  current_savestate_dir ; 
 int /*<<< orphan*/  dir_savefile ; 
 int /*<<< orphan*/  dir_savestate ; 
 int /*<<< orphan*/  dir_system ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(enum rarch_dir_type type)
{
   switch (type)
   {
      case RARCH_DIR_SYSTEM:
         return FUNC0(dir_system);
      case RARCH_DIR_SAVEFILE:
         return FUNC0(dir_savefile);
      case RARCH_DIR_CURRENT_SAVEFILE:
         return FUNC0(current_savefile_dir);
      case RARCH_DIR_SAVESTATE:
         return FUNC0(dir_savestate);
      case RARCH_DIR_CURRENT_SAVESTATE:
         return FUNC0(current_savestate_dir);
      case RARCH_DIR_NONE:
         break;
   }

   return false;
}