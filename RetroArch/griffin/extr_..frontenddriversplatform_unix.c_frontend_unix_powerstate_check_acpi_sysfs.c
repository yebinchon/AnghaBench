
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RDIR {int dummy; } ;
typedef enum frontend_powerstate { ____Placeholder_frontend_powerstate } frontend_powerstate ;


 int FRONTEND_POWERSTATE_CHARGED ;
 int FRONTEND_POWERSTATE_CHARGING ;
 int FRONTEND_POWERSTATE_NO_SOURCE ;
 int FRONTEND_POWERSTATE_ON_POWER_SOURCE ;
 int check_proc_acpi_sysfs_ac_adapter (char*,int*) ;
 int check_proc_acpi_sysfs_battery (char const*,int*,int*,int*,int*) ;
 int proc_acpi_sysfs_ac_adapter_path ;
 int proc_acpi_sysfs_battery_path ;
 int retro_closedir (struct RDIR*) ;
 scalar_t__ retro_dirent_error (struct RDIR*) ;
 char* retro_dirent_get_name (struct RDIR*) ;
 struct RDIR* retro_opendir (int ) ;
 scalar_t__ retro_readdir (struct RDIR*) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool frontend_unix_powerstate_check_acpi_sysfs(
      enum frontend_powerstate *state,
      int *seconds, int *percent)
{
   bool have_battery = 0;
   bool have_ac = 0;
   bool charging = 0;
   struct RDIR *entry = retro_opendir(proc_acpi_sysfs_battery_path);
   if (!entry)
      goto error;

   if (retro_dirent_error(entry))
      goto error;

   while (retro_readdir(entry))
   {
      const char *node = retro_dirent_get_name(entry);




      if (node && strstr(node, "BAT"))

         check_proc_acpi_sysfs_battery(node,
               &have_battery, &charging, seconds, percent);
   }

   retro_closedir(entry);

   entry = retro_opendir(proc_acpi_sysfs_ac_adapter_path);

   if (entry)
   {
      check_proc_acpi_sysfs_ac_adapter(retro_dirent_get_name(entry), &have_ac);
      retro_closedir(entry);
   }
   else
      have_ac = 0;

   if (!have_battery)
   {
      *state = FRONTEND_POWERSTATE_NO_SOURCE;
   }
   else if (charging)
      *state = FRONTEND_POWERSTATE_CHARGING;
   else if (have_ac)
      *state = FRONTEND_POWERSTATE_CHARGED;
   else
      *state = FRONTEND_POWERSTATE_ON_POWER_SOURCE;

   return 1;

error:
   if (entry)
      retro_closedir(entry);

   return 0;
}
