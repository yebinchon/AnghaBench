
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
struct retro_subsystem_memory_info {char* extension; int type; } ;
struct retro_subsystem_info {TYPE_2__* roms; int num_roms; } ;
typedef int savename ;
struct TYPE_10__ {int size; int data; } ;
struct TYPE_14__ {TYPE_1__ subsystem; } ;
typedef TYPE_5__ rarch_system_info_t ;
struct TYPE_13__ {char* savefile; } ;
struct TYPE_15__ {TYPE_4__ name; } ;
typedef TYPE_6__ global_t ;
typedef int ext ;
struct TYPE_16__ {TYPE_3__* elems; scalar_t__ size; } ;
struct TYPE_12__ {char* data; } ;
struct TYPE_11__ {unsigned int num_memory; int * memory; } ;


 unsigned int MIN (int ,unsigned int) ;
 int MSG_REDIRECTING_SAVEFILE_TO ;
 int PATH_MAX_LENGTH ;
 int RARCH_DIR_CURRENT_SAVEFILE ;
 int RARCH_LOG (char*,int ,char*) ;
 int RARCH_OVERRIDE_SETTING_SAVE_PATH ;
 int RARCH_PATH_SUBSYSTEM ;
 char* dir_get (int ) ;
 int fill_pathname (char*,char*,char*,size_t) ;
 int fill_pathname_dir (char*,char*,char*,int) ;
 int fill_pathname_noext (char*,char*,char*,int) ;
 int free (char*) ;
 TYPE_6__ g_extern ;
 struct retro_subsystem_info* libretro_find_subsystem_info (int ,int ,int ) ;
 scalar_t__ malloc (int) ;
 int msg_hash_to_str (int ) ;
 int path_get (int ) ;
 scalar_t__ path_is_directory (char*) ;
 int path_is_empty (int ) ;
 char* path_main_basename ;
 int path_remove_extension (char*) ;
 int retroarch_override_setting_is_set (int ,int *) ;
 TYPE_5__ runloop_system ;
 scalar_t__ savefile_ptr_get () ;
 int snprintf (char*,int,char*,char*) ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 int strlcpy (char*,char*,size_t) ;
 TYPE_7__* subsystem_fullpaths ;

__attribute__((used)) static bool path_init_subsystem(void)
{
   unsigned i, j;
   const struct retro_subsystem_info *info = ((void*)0);
   global_t *global = &g_extern;
   rarch_system_info_t *system = &runloop_system;
   bool subsystem_path_empty = path_is_empty(RARCH_PATH_SUBSYSTEM);

   if (!system || subsystem_path_empty)
      return 0;


   info = libretro_find_subsystem_info(
         system->subsystem.data,
         system->subsystem.size,
         path_get(RARCH_PATH_SUBSYSTEM));


   if (info)
   {
      unsigned num_content = MIN(info->num_roms,
            subsystem_path_empty ?
            0 : (unsigned)subsystem_fullpaths->size);

      for (i = 0; i < num_content; i++)
      {
         for (j = 0; j < info->roms[i].num_memory; j++)
         {
            union string_list_elem_attr attr;
            char ext[32];
            char savename[PATH_MAX_LENGTH];
            size_t path_size = PATH_MAX_LENGTH * sizeof(char);
            char *path = (char*)malloc(
                  PATH_MAX_LENGTH * sizeof(char));
            const struct retro_subsystem_memory_info *mem =
               (const struct retro_subsystem_memory_info*)
               &info->roms[i].memory[j];

            path[0] = ext[0] = '\0';

            snprintf(ext, sizeof(ext), ".%s", mem->extension);
            strlcpy(savename, subsystem_fullpaths->elems[i].data, sizeof(savename));
            path_remove_extension(savename);

            if (path_is_directory(dir_get(RARCH_DIR_CURRENT_SAVEFILE)))
            {


               strlcpy(path, dir_get(RARCH_DIR_CURRENT_SAVEFILE), path_size);
               fill_pathname_dir(path,
                     savename, ext,
                     path_size);
            }
            else
               fill_pathname(path, savename, ext, path_size);

            RARCH_LOG("%s \"%s\".\n",
               msg_hash_to_str(MSG_REDIRECTING_SAVEFILE_TO),
               path);

            attr.i = mem->type;
            string_list_append((struct string_list*)savefile_ptr_get(), path, attr);
            free(path);
         }
      }
   }

   if (global)
   {

      if (!retroarch_override_setting_is_set(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0)))
         fill_pathname_noext(global->name.savefile,
               path_main_basename,
               ".srm",
               sizeof(global->name.savefile));

      if (path_is_directory(global->name.savefile))
      {
         fill_pathname_dir(global->name.savefile,
               path_main_basename,
               ".srm",
               sizeof(global->name.savefile));
         RARCH_LOG("%s \"%s\".\n",
               msg_hash_to_str(MSG_REDIRECTING_SAVEFILE_TO),
               global->name.savefile);
      }
   }

   return 1;
}
