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
struct retro_subsystem_info {size_t num_roms; TYPE_2__* roms; } ;
struct TYPE_5__ {struct retro_subsystem_info* data; } ;
struct TYPE_7__ {TYPE_1__ subsystem; } ;
typedef  TYPE_3__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  file_list_t ;
struct TYPE_6__ {char* desc; } ;

/* Variables and functions */
 unsigned int MENU_SETTINGS_SUBSYSTEM_ADD ; 
 unsigned int FUNC0 () ; 
 size_t FUNC1 () ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*) ; 
 scalar_t__ subsystem_current_count ; 
 struct retro_subsystem_info* subsystem_data ; 

__attribute__((used)) static int FUNC4(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   rarch_system_info_t *system                  = FUNC2();
   const struct retro_subsystem_info *subsystem;

   /* Core fully loaded, use the subsystem data */
   if (system->subsystem.data)
      subsystem = system->subsystem.data + (type - MENU_SETTINGS_SUBSYSTEM_ADD);
   /* Core not loaded completely, use the data we peeked on load core */
   else
      subsystem = subsystem_data + (type - MENU_SETTINGS_SUBSYSTEM_ADD);

   if (subsystem && subsystem_current_count > 0)
   {
      if (FUNC1() < subsystem->num_roms)
         FUNC3(s, len, " Current Content: %s",
            FUNC0() == type - MENU_SETTINGS_SUBSYSTEM_ADD
            ? subsystem->roms[FUNC1()].desc
            : subsystem->roms[0].desc);
   }

   return 0;
}