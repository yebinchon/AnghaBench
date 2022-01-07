
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_shader {int passes; } ;
struct TYPE_4__ {char* directory_video_shader; char* directory_menu_config; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int fullname ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef int config_directory ;
typedef int buffer ;


 size_t ARRAY_SIZE (char const**) ;
 int PATH_MAX_LENGTH ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_CONFIG ;
 int RARCH_SHADER_NONE ;
 int RARCH_WARN (char*,char*) ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_basedir (char*,int ,int) ;
 int fill_pathname_join (char*,char const*,char*,int) ;
 scalar_t__ menu_driver_shader_modified ;
 int menu_shader_manager_get_type (struct video_shader const*) ;
 int menu_shader_manager_set_preset (int *,int,char*,int) ;
 int path_get (int ) ;
 scalar_t__ path_is_absolute (char*) ;
 int path_is_empty (int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strstr (char const*,char*) ;
 char const* video_shader_get_preset_extension (int) ;
 int video_shader_write_preset (char*,struct video_shader const*,int) ;

__attribute__((used)) static bool menu_shader_manager_save_preset_internal(
      const struct video_shader *shader, const char *basename,
      bool apply, bool save_reference)
{
   bool ret = 0;
   enum rarch_shader_type type = RARCH_SHADER_NONE;
   char *preset_path = ((void*)0);
   size_t i = 0;
   char fullname[PATH_MAX_LENGTH];
   char buffer[PATH_MAX_LENGTH];

   fullname[0] = buffer[0] = '\0';

   if (!shader || !shader->passes)
      return 0;

   type = menu_shader_manager_get_type(shader);

   if (type == RARCH_SHADER_NONE)
      return 0;

   if (menu_driver_shader_modified)
      save_reference = 0;

   if (!string_is_empty(basename))
   {
      strlcpy(fullname, basename, sizeof(fullname));


      if ( !strstr(basename, ".cgp")
            && !strstr(basename, ".glslp")
            && !strstr(basename, ".slangp"))
      {
         const char *preset_ext = video_shader_get_preset_extension(type);
         strlcat(fullname, preset_ext, sizeof(fullname));
      }
   }
   else
   {
      strlcpy(fullname, "retroarch", sizeof(fullname));
      strlcat(fullname,
            video_shader_get_preset_extension(type), sizeof(fullname));
   }

   if (path_is_absolute(fullname))
   {
      preset_path = fullname;

      ret = video_shader_write_preset(preset_path, shader, save_reference);

      if (ret)
         RARCH_LOG("Saved shader preset to %s.\n", preset_path);
      else
         RARCH_ERR("Failed writing shader preset to %s.\n", preset_path);
   }
   else
   {
      const char *dirs[3] = {0};
      settings_t *settings = config_get_ptr();
      char config_directory[PATH_MAX_LENGTH];

      config_directory[0] = '\0';

      if (!path_is_empty(RARCH_PATH_CONFIG))
         fill_pathname_basedir(
               config_directory,
               path_get(RARCH_PATH_CONFIG),
               sizeof(config_directory));

      dirs[0] = settings->paths.directory_video_shader;
      dirs[1] = settings->paths.directory_menu_config;
      dirs[2] = config_directory;

      for (i = 0; i < ARRAY_SIZE(dirs); i++)
      {
         if (string_is_empty(dirs[i]))
            continue;

         fill_pathname_join(buffer, dirs[i],
               fullname, sizeof(buffer));

         preset_path = buffer;

         ret = video_shader_write_preset(preset_path, shader, save_reference);

         if (ret)
         {
            RARCH_LOG("Saved shader preset to %s.\n", preset_path);
            break;
         }
         else
            RARCH_WARN("Failed writing shader preset to %s.\n", preset_path);
      }

      if (!ret)
         RARCH_ERR("Failed to write shader preset. Make sure shader directory"
               " and/or config directory are writable.\n");
   }

   if (ret && apply)
      menu_shader_manager_set_preset(((void*)0), type, preset_path, 1);

   return ret;
}
