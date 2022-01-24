#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ video_shader_ctx_t ;
struct video_shader {int passes; TYPE_3__* pass; } ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {TYPE_2__ source; } ;
struct TYPE_6__ {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_SHADER_PRESET_LOADED ; 
 int RARCH_SHADER_NONE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct video_shader* menu_driver_shader ; 
 int menu_driver_shader_modified ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 () ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct video_shader*) ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct video_shader*) ; 

bool FUNC14(void)
{
   enum rarch_shader_type type      = RARCH_SHADER_NONE;
   bool ret                         = true;
   bool is_preset                   = false;
   const char *path_shader          = NULL;
   struct video_shader *menu_shader = NULL;

   /* We get the shader preset directly from the video driver, so that
    * we are in sync with it (it could fail loading an auto-shader)
    * If we can't (e.g. get_current_shader is not implemented),
    * we'll load retroarch_get_shader_preset() like always */
   video_shader_ctx_t shader_info = {0};

   FUNC8(&shader_info);

   if (shader_info.data)
      path_shader = shader_info.data->path;
   else
      path_shader = FUNC5();

   FUNC3();

   menu_shader          = (struct video_shader*)
      FUNC0(1, sizeof(*menu_shader));

   if (!menu_shader)
   {
      ret = false;
      goto end;
   }

   if (FUNC6(path_shader))
      goto end;

   type = FUNC9(FUNC4(path_shader),
         &is_preset);

   if (!FUNC10(type))
   {
      ret = false;
      goto end;
   }

   if (is_preset)
   {
      config_file_t *conf = NULL;

      conf = FUNC12(path_shader);

      if (!conf)
      {
         ret = false;
         goto end;
      }

      if (FUNC11(conf, menu_shader))
         FUNC13(conf, menu_shader);

      menu_driver_shader_modified = false;

      FUNC2(conf);
   }
   else
   {
      FUNC7(menu_shader->pass[0].source.path, path_shader,
            sizeof(menu_shader->pass[0].source.path));
      menu_shader->passes = 1;
   }

end:
   menu_driver_shader = menu_shader;
   FUNC1(CMD_EVENT_SHADER_PRESET_LOADED, NULL);
   return ret;
}