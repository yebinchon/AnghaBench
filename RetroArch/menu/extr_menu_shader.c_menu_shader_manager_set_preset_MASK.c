#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_shader {int dummy; } ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_SHADER_PRESET_LOADED ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct video_shader*) ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct video_shader*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct video_shader*) ; 

bool FUNC10(struct video_shader *shader,
      enum rarch_shader_type type, const char *preset_path, bool apply)
{
   config_file_t *conf           = NULL;
   bool refresh                  = false;
   bool ret                      = false;

   if (apply && !FUNC5(type, preset_path, true))
   {
      /* We don't want to disable shaders entirely here,
       * just reset number of passes
       * > Note: Disabling shaders at this point would in
       *   fact be dangerous, since it changes the number of
       *   entries in the shader options menu which can in
       *   turn lead to the menu selection pointer going out
       *   of bounds. This causes undefined behaviour/segfaults */
      FUNC4(shader);
      FUNC1(CMD_EVENT_SHADER_PRESET_LOADED, NULL);
      return false;
   }

   if (FUNC6(preset_path))
   {
      FUNC4(shader);
      FUNC1(CMD_EVENT_SHADER_PRESET_LOADED, NULL);
      return true;
   }

   if (!shader)
   {
      ret = false;
      goto end;
   }

   /* Load stored Preset into menu on success.
    * Used when a preset is directly loaded.
    * No point in updating when the Preset was
    * created from the menu itself. */
   if (!(conf = FUNC8(preset_path)))
   {
      ret = false;
      goto end;
   }

   FUNC0("Setting Menu shader: %s.\n", preset_path);

   if (FUNC7(conf, shader))
      FUNC9(conf, shader);

   if (conf)
      FUNC2(conf);

   ret = true;

end:
   FUNC1(CMD_EVENT_SHADER_PRESET_LOADED, NULL);
#ifdef HAVE_MENU
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
#endif
   return ret;
}