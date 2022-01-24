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
typedef  int /*<<< orphan*/  tmp ;
struct video_shader {int dummy; } ;
struct retro_system_info {char* library_name; } ;
struct TYPE_4__ {char* directory_video_shader; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  file ;
typedef  enum auto_shader_type { ____Placeholder_auto_shader_type } auto_shader_type ;
typedef  enum auto_shader_operation { ____Placeholder_auto_shader_operation } auto_shader_operation ;
typedef  int /*<<< orphan*/  directory ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int AUTO_SHADER_OP_EXISTS ; 
 int AUTO_SHADER_OP_REMOVE ; 
 int AUTO_SHADER_OP_SAVE ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
#define  SHADER_PRESET_CORE 131 
#define  SHADER_PRESET_GAME 130 
#define  SHADER_PRESET_GLOBAL 129 
#define  SHADER_PRESET_PARENT 128 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct video_shader const*,char*,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct retro_system_info* FUNC11 () ; 
 int /*<<< orphan*/ * shader_types ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC17(enum auto_shader_operation op,
      const struct video_shader *shader, enum auto_shader_type type, bool apply)
{
   char tmp[PATH_MAX_LENGTH];
   char directory[PATH_MAX_LENGTH];
   char file[PATH_MAX_LENGTH];
   settings_t *settings             = FUNC1();
   struct retro_system_info *system = FUNC11();
   const char *core_name            = system ? system->library_name : NULL;

   tmp[0] = directory[0] = file[0] = '\0';

   if (type == SHADER_PRESET_GLOBAL)
   {
      FUNC3(
            directory,
            settings->paths.directory_video_shader,
            "presets",
            sizeof(directory));
   }
   else if (FUNC12(core_name))
      return false;
   else
   {
      FUNC3(
            tmp,
            settings->paths.directory_video_shader,
            "presets",
            sizeof(tmp));
      FUNC3(
            directory,
            tmp,
            core_name,
            sizeof(directory));
   }

   switch (type)
   {
      case SHADER_PRESET_GLOBAL:
         FUNC3(file, directory, "global", sizeof(file));
         break;
      case SHADER_PRESET_CORE:
         FUNC3(file, directory, core_name, sizeof(file));
         break;
      case SHADER_PRESET_PARENT:
         FUNC4(tmp,
               FUNC7(RARCH_PATH_BASENAME), sizeof(tmp));
         FUNC3(file, directory, tmp, sizeof(file));
         break;
      case SHADER_PRESET_GAME:
         {
            const char *game_name = 
               FUNC6(FUNC7(RARCH_PATH_BASENAME));
            if (FUNC12(game_name))
               return false;
            FUNC3(file, directory, game_name, sizeof(file));
            break;
         }
      default:
         return false;
   }

   if (op == AUTO_SHADER_OP_SAVE)
   {
      if (!FUNC8(directory))
         FUNC10(directory);

      return FUNC5(
            shader, file, apply, true);
   }
   else if (op == AUTO_SHADER_OP_REMOVE)
   {
      /* remove all supported auto-shaders of given type */
      char *end = file + FUNC14(file);
      size_t i;
      bool success = false;

      for (i = 0; i < FUNC0(shader_types); i++)
      {
         const char *preset_ext;

         if (!FUNC16(shader_types[i]))
            continue;

         preset_ext = FUNC15(shader_types[i]);
         FUNC13(end, preset_ext, sizeof(file) - (end-file));

         if (!FUNC2(file))
            success = true;
      }
      return success;
   }
   else if (op == AUTO_SHADER_OP_EXISTS)
   {
      /* test if any supported auto-shaders of given type exists */
      char *end = file + FUNC14(file);
      size_t i;

      for (i = 0; i < FUNC0(shader_types); i++)
      {
         const char *preset_ext;

         if (!FUNC16(shader_types[i]))
            continue;

         preset_ext = FUNC15(shader_types[i]);
         FUNC13(end, preset_ext, sizeof(file) - (end-file));

         if (FUNC9(file))
            return true;
      }
   }

   return false;
}