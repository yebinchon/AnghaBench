#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct video_shader {int /*<<< orphan*/  passes; } ;
struct TYPE_4__ {char* directory_video_shader; char* directory_menu_config; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  fullname ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef  int /*<<< orphan*/  config_directory ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int RARCH_SHADER_NONE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char*,int) ; 
 scalar_t__ menu_driver_shader_modified ; 
 int FUNC7 (struct video_shader const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 char const* FUNC16 (int) ; 
 int FUNC17 (char*,struct video_shader const*,int) ; 

__attribute__((used)) static bool FUNC18(
      const struct video_shader *shader, const char *basename,
      bool apply, bool save_reference)
{
   bool ret                       = false;
   enum rarch_shader_type type    = RARCH_SHADER_NONE;
   char *preset_path              = NULL;
   size_t i                       = 0;
   char fullname[PATH_MAX_LENGTH];
   char buffer[PATH_MAX_LENGTH];

   fullname[0] = buffer[0] = '\0';

   if (!shader || !shader->passes)
      return false;

   type = FUNC7(shader);

   if (type == RARCH_SHADER_NONE)
      return false;

   if (menu_driver_shader_modified)
      save_reference = false;

   if (!FUNC12(basename))
   {
      FUNC14(fullname, basename, sizeof(fullname));

      /* Append extension automatically as appropriate. */
      if (     !FUNC15(basename, ".cgp")
            && !FUNC15(basename, ".glslp")
            && !FUNC15(basename, ".slangp"))
      {
         const char *preset_ext = FUNC16(type);
         FUNC13(fullname, preset_ext, sizeof(fullname));
      }
   }
   else
   {
      FUNC14(fullname, "retroarch", sizeof(fullname));
      FUNC13(fullname, 
            FUNC16(type), sizeof(fullname));
   }

   if (FUNC10(fullname))
   {
      preset_path = fullname;

      ret = FUNC17(preset_path, shader, save_reference);

      if (ret)
         FUNC2("Saved shader preset to %s.\n", preset_path);
      else
         FUNC1("Failed writing shader preset to %s.\n", preset_path);
   }
   else
   {
      const char *dirs[3]  = {0};
      settings_t *settings = FUNC4();
      char config_directory[PATH_MAX_LENGTH];

      config_directory[0] = '\0';

      if (!FUNC11(RARCH_PATH_CONFIG))
         FUNC5(
               config_directory,
               FUNC9(RARCH_PATH_CONFIG),
               sizeof(config_directory));

      dirs[0] = settings->paths.directory_video_shader;
      dirs[1] = settings->paths.directory_menu_config;
      dirs[2] = config_directory;

      for (i = 0; i < FUNC0(dirs); i++)
      {
         if (FUNC12(dirs[i]))
            continue;

         FUNC6(buffer, dirs[i],
               fullname, sizeof(buffer));

         preset_path = buffer;

         ret = FUNC17(preset_path, shader, save_reference);

         if (ret)
         {
            FUNC2("Saved shader preset to %s.\n", preset_path);
            break;
         }
         else
            FUNC3("Failed writing shader preset to %s.\n", preset_path);
      }

      if (!ret)
         FUNC1("Failed to write shader preset. Make sure shader directory"
               " and/or config directory are writable.\n");
   }

   if (ret && apply)
      FUNC8(NULL, type, preset_path, true);

   return ret;
}