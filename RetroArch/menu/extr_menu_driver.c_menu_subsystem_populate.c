
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
struct retro_subsystem_info {int num_roms; char* desc; TYPE_3__* roms; } ;
typedef int star_char ;
struct TYPE_9__ {int menu_show_sublabels; } ;
struct TYPE_8__ {int menu_driver; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef TYPE_4__ settings_t ;
typedef int s ;
typedef int rom_buff ;
struct TYPE_12__ {int list; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
struct TYPE_10__ {char* desc; } ;


 int MENU_ENUM_LABEL_SUBSYSTEM_ADD ;
 int MENU_ENUM_LABEL_SUBSYSTEM_LOAD ;
 scalar_t__ MENU_SETTINGS_SUBSYSTEM_ADD ;
 scalar_t__ MENU_SETTINGS_SUBSYSTEM_LOAD ;
 int PATH_MAX_LENGTH ;
 int RARCH_WARN (char*) ;
 TYPE_4__* config_get_ptr () ;
 unsigned int content_get_subsystem () ;
 int content_get_subsystem_rom (unsigned int) ;
 int content_get_subsystem_rom_id () ;
 int menu_entries_append_enum (int ,char*,int ,int ,scalar_t__,int ,int ) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 int string_is_empty (char*) ;
 int string_is_equal (int ,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 unsigned int subsystem_current_count ;
 scalar_t__ verbosity_is_enabled () ;

void menu_subsystem_populate(const struct retro_subsystem_info* subsystem, menu_displaylist_info_t *info)
{
   settings_t *settings = config_get_ptr();
   static const char utf8_star_char[] = "\xE2\x98\x85";

   char star_char[16];
   unsigned i = 0;
   int n = 0;
   bool is_rgui = string_is_equal(settings->arrays.menu_driver, "rgui");




   snprintf(star_char, sizeof(star_char), "%s", is_rgui ? "*" : utf8_star_char);

   if (subsystem && subsystem_current_count > 0)
   {
      for (i = 0; i < subsystem_current_count; i++, subsystem++)
      {
         char s[PATH_MAX_LENGTH];
         if (content_get_subsystem() == i)
         {
            if (content_get_subsystem_rom_id() < subsystem->num_roms)
            {
               snprintf(s, sizeof(s),
                  "Load %s %s",
                  subsystem->desc,
                  star_char);



               if (is_rgui && !settings->bools.menu_show_sublabels)
               {
                  char tmp[PATH_MAX_LENGTH];

                  n = snprintf(tmp, sizeof(tmp),
                     "%s [%s %s]", s, "Current Content:",
                     subsystem->roms[content_get_subsystem_rom_id()].desc);
                  if ((n < 0) || (n >= PATH_MAX_LENGTH))
                  {
                     if (verbosity_is_enabled())
                     {
                        RARCH_WARN("Menu subsystem entry: Description label truncated.\n");
                     }
                  }

                  strlcpy(s, tmp, sizeof(s));
               }

               menu_entries_append_enum(info->list,
                  s,
                  msg_hash_to_str(MENU_ENUM_LABEL_SUBSYSTEM_ADD),
                  MENU_ENUM_LABEL_SUBSYSTEM_ADD,
                  MENU_SETTINGS_SUBSYSTEM_ADD + i, 0, 0);
            }
            else
            {
               snprintf(s, sizeof(s),
                  "Start %s %s",
                  subsystem->desc,
                  star_char);



               if (is_rgui && !settings->bools.menu_show_sublabels)
               {
                  unsigned j = 0;
                  char rom_buff[PATH_MAX_LENGTH];
                  char tmp[PATH_MAX_LENGTH];
                  rom_buff[0] = '\0';

                  for (j = 0; j < content_get_subsystem_rom_id(); j++)
                  {
                     strlcat(rom_buff,
                           path_basename(content_get_subsystem_rom(j)), sizeof(rom_buff));
                     if (j != content_get_subsystem_rom_id() - 1)
                        strlcat(rom_buff, "|", sizeof(rom_buff));
                  }

                  if (!string_is_empty(rom_buff))
                  {
                     n = snprintf(tmp, sizeof(tmp), "%s [%s]", s, rom_buff);


                     if ((n < 0) || (n >= PATH_MAX_LENGTH))
                     {
                        if (verbosity_is_enabled())
                        {
                           RARCH_WARN("Menu subsystem entry: Description label truncated.\n");
                        }
                     }

                     strlcpy(s, tmp, sizeof(s));
                  }
               }

               menu_entries_append_enum(info->list,
                  s,
                  msg_hash_to_str(MENU_ENUM_LABEL_SUBSYSTEM_LOAD),
                  MENU_ENUM_LABEL_SUBSYSTEM_LOAD,
                  MENU_SETTINGS_SUBSYSTEM_LOAD, 0, 0);
            }
         }
         else
         {
            snprintf(s, sizeof(s),
               "Load %s",
               subsystem->desc);



            if (is_rgui && !settings->bools.menu_show_sublabels)
            {



               if (subsystem->num_roms > 0)
               {
                  char tmp[PATH_MAX_LENGTH];

                  n = snprintf(tmp, sizeof(tmp),
                     "%s [%s %s]", s, "Current Content:",
                     subsystem->roms[0].desc);


                  if ((n < 0) || (n >= PATH_MAX_LENGTH))
                  {
                     if (verbosity_is_enabled())
                     {
                        RARCH_WARN("Menu subsystem entry: Description label truncated.\n");
                     }
                  }

                  strlcpy(s, tmp, sizeof(s));
               }
            }

            menu_entries_append_enum(info->list,
               s,
               msg_hash_to_str(MENU_ENUM_LABEL_SUBSYSTEM_ADD),
               MENU_ENUM_LABEL_SUBSYSTEM_ADD,
               MENU_SETTINGS_SUBSYSTEM_ADD + i, 0, 0);
         }
      }
   }
}
