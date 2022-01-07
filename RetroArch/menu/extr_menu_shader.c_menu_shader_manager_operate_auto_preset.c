
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct video_shader {int dummy; } ;
struct retro_system_info {char* library_name; } ;
struct TYPE_4__ {char* directory_video_shader; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int file ;
typedef enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;
typedef enum auto_shader_operation { ____Placeholder_auto_shader_operation } auto_shader_operation ;
typedef int directory ;


 size_t ARRAY_SIZE (int *) ;
 int AUTO_SHADER_OP_EXISTS ;
 int AUTO_SHADER_OP_REMOVE ;
 int AUTO_SHADER_OP_SAVE ;
 int PATH_MAX_LENGTH ;
 int RARCH_PATH_BASENAME ;




 TYPE_2__* config_get_ptr () ;
 int filestream_delete (char*) ;
 int fill_pathname_join (char*,char*,char const*,int) ;
 int fill_pathname_parent_dir_name (char*,int ,int) ;
 int menu_shader_manager_save_preset_internal (struct video_shader const*,char*,int,int) ;
 char* path_basename (int ) ;
 int path_get (int ) ;
 int path_is_directory (char*) ;
 scalar_t__ path_is_valid (char*) ;
 int path_mkdir (char*) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int * shader_types ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 char* video_shader_get_preset_extension (int ) ;
 int video_shader_is_supported (int ) ;

__attribute__((used)) static bool menu_shader_manager_operate_auto_preset(enum auto_shader_operation op,
      const struct video_shader *shader, enum auto_shader_type type, bool apply)
{
   char tmp[PATH_MAX_LENGTH];
   char directory[PATH_MAX_LENGTH];
   char file[PATH_MAX_LENGTH];
   settings_t *settings = config_get_ptr();
   struct retro_system_info *system = runloop_get_libretro_system_info();
   const char *core_name = system ? system->library_name : ((void*)0);

   tmp[0] = directory[0] = file[0] = '\0';

   if (type == 129)
   {
      fill_pathname_join(
            directory,
            settings->paths.directory_video_shader,
            "presets",
            sizeof(directory));
   }
   else if (string_is_empty(core_name))
      return 0;
   else
   {
      fill_pathname_join(
            tmp,
            settings->paths.directory_video_shader,
            "presets",
            sizeof(tmp));
      fill_pathname_join(
            directory,
            tmp,
            core_name,
            sizeof(directory));
   }

   switch (type)
   {
      case 129:
         fill_pathname_join(file, directory, "global", sizeof(file));
         break;
      case 131:
         fill_pathname_join(file, directory, core_name, sizeof(file));
         break;
      case 128:
         fill_pathname_parent_dir_name(tmp,
               path_get(RARCH_PATH_BASENAME), sizeof(tmp));
         fill_pathname_join(file, directory, tmp, sizeof(file));
         break;
      case 130:
         {
            const char *game_name =
               path_basename(path_get(RARCH_PATH_BASENAME));
            if (string_is_empty(game_name))
               return 0;
            fill_pathname_join(file, directory, game_name, sizeof(file));
            break;
         }
      default:
         return 0;
   }

   if (op == AUTO_SHADER_OP_SAVE)
   {
      if (!path_is_directory(directory))
         path_mkdir(directory);

      return menu_shader_manager_save_preset_internal(
            shader, file, apply, 1);
   }
   else if (op == AUTO_SHADER_OP_REMOVE)
   {

      char *end = file + strlen(file);
      size_t i;
      bool success = 0;

      for (i = 0; i < ARRAY_SIZE(shader_types); i++)
      {
         const char *preset_ext;

         if (!video_shader_is_supported(shader_types[i]))
            continue;

         preset_ext = video_shader_get_preset_extension(shader_types[i]);
         strlcpy(end, preset_ext, sizeof(file) - (end-file));

         if (!filestream_delete(file))
            success = 1;
      }
      return success;
   }
   else if (op == AUTO_SHADER_OP_EXISTS)
   {

      char *end = file + strlen(file);
      size_t i;

      for (i = 0; i < ARRAY_SIZE(shader_types); i++)
      {
         const char *preset_ext;

         if (!video_shader_is_supported(shader_types[i]))
            continue;

         preset_ext = video_shader_get_preset_extension(shader_types[i]);
         strlcpy(end, preset_ext, sizeof(file) - (end-file));

         if (path_is_valid(file))
            return 1;
      }
   }

   return 0;
}
