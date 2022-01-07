
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct retro_subsystem_info {size_t num_roms; TYPE_2__* roms; } ;
struct TYPE_5__ {struct retro_subsystem_info* data; } ;
struct TYPE_7__ {TYPE_1__ subsystem; } ;
typedef TYPE_3__ rarch_system_info_t ;
typedef int file_list_t ;
struct TYPE_6__ {char* desc; } ;


 unsigned int MENU_SETTINGS_SUBSYSTEM_ADD ;
 unsigned int content_get_subsystem () ;
 size_t content_get_subsystem_rom_id () ;
 TYPE_3__* runloop_get_system_info () ;
 int snprintf (char*,size_t,char*,char*) ;
 scalar_t__ subsystem_current_count ;
 struct retro_subsystem_info* subsystem_data ;

__attribute__((used)) static int action_bind_sublabel_subsystem_add(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   rarch_system_info_t *system = runloop_get_system_info();
   const struct retro_subsystem_info *subsystem;


   if (system->subsystem.data)
      subsystem = system->subsystem.data + (type - MENU_SETTINGS_SUBSYSTEM_ADD);

   else
      subsystem = subsystem_data + (type - MENU_SETTINGS_SUBSYSTEM_ADD);

   if (subsystem && subsystem_current_count > 0)
   {
      if (content_get_subsystem_rom_id() < subsystem->num_roms)
         snprintf(s, len, " Current Content: %s",
            content_get_subsystem() == type - MENU_SETTINGS_SUBSYSTEM_ADD
            ? subsystem->roms[content_get_subsystem_rom_id()].desc
            : subsystem->roms[0].desc);
   }

   return 0;
}
