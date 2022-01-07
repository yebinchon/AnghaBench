
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct retro_subsystem_info {int ident; } ;
struct TYPE_4__ {struct retro_subsystem_info* data; } ;
struct TYPE_5__ {TYPE_1__ subsystem; } ;
typedef TYPE_2__ rarch_system_info_t ;


 int content_set_subsystem (unsigned int) ;
 TYPE_2__* runloop_get_system_info () ;
 scalar_t__ string_is_equal (char const*,int ) ;
 unsigned int subsystem_current_count ;
 struct retro_subsystem_info* subsystem_data ;

bool content_set_subsystem_by_name(const char* subsystem_name)
{
   rarch_system_info_t *system = runloop_get_system_info();
   const struct retro_subsystem_info *subsystem;
   unsigned i = 0;


   if (system->subsystem.data)
      subsystem = system->subsystem.data;

   else
      subsystem = subsystem_data;

   for (i = 0; i < subsystem_current_count; i++, subsystem++)
   {
      if (string_is_equal(subsystem_name, subsystem->ident))
      {
         content_set_subsystem(i);
         return 1;
      }
   }

   return 0;
}
