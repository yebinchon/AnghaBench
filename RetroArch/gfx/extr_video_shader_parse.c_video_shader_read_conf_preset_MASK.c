#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct video_shader {int feedback_pass; unsigned int passes; TYPE_8__* pass; int /*<<< orphan*/  path; } ;
struct string_list {int dummy; } ;
struct TYPE_12__ {int video_shader_watch_files; } ;
struct TYPE_14__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_15__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ config_file_t ;
struct TYPE_13__ {int /*<<< orphan*/  path; } ;
struct TYPE_16__ {TYPE_2__ source; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_MAX_SHADERS ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int PATH_CHANGE_TYPE_FILE_DELETED ; 
 int PATH_CHANGE_TYPE_FILE_MOVED ; 
 int PATH_CHANGE_TYPE_MODIFIED ; 
 int PATH_CHANGE_TYPE_WRITE_FILE_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,int*) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,unsigned int*) ; 
 int /*<<< orphan*/ * file_change_data ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (struct video_shader*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,int /*<<< orphan*/ ,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 
 struct string_list* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_8__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct video_shader*) ; 

bool FUNC13(config_file_t *conf,
      struct video_shader *shader)
{
   unsigned i;
   union string_list_elem_attr attr;
   unsigned shaders                 = 0;
   settings_t *settings             = FUNC3();
   struct string_list *file_list    = NULL;
   bool watch_files                 = settings->bools.video_shader_watch_files;

   FUNC6(shader, 0, sizeof(*shader));

   if (!FUNC4(conf, "shaders", &shaders))
   {
      FUNC1("Cannot find \"shaders\" param.\n");
      return false;
   }

   if (!shaders)
   {
      FUNC1("Need to define at least 1 shader.\n");
      return false;
   }

   if (!FUNC2(conf, "feedback_pass",
            &shader->feedback_pass))
      shader->feedback_pass = -1;

   shader->passes = FUNC0(shaders, GFX_MAX_SHADERS);
   attr.i         = 0;

   FUNC10(shader->path, conf->path, sizeof(shader->path));

   if (watch_files)
   {
      if (file_change_data)
         FUNC5(NULL,
               0, &file_change_data);

      file_change_data = NULL;
      file_list        = FUNC9();
      FUNC7(file_list, conf->path, attr);
   }

   for (i = 0; i < shader->passes; i++)
   {
      if (!FUNC11(conf, &shader->pass[i], i))
      {
         if (file_list)
         {
            FUNC8(file_list);
            file_list = NULL;
         }
         return false;
      }

      if (watch_files && file_list)
         FUNC7(file_list,
               shader->pass[i].source.path, attr);
   }

   if (watch_files)
   {
      int flags = PATH_CHANGE_TYPE_MODIFIED          |
                  PATH_CHANGE_TYPE_WRITE_FILE_CLOSED |
                  PATH_CHANGE_TYPE_FILE_MOVED        |
                  PATH_CHANGE_TYPE_FILE_DELETED;

      FUNC5(file_list,
            flags, &file_change_data);
      if (file_list)
         FUNC8(file_list);
   }

   if (!FUNC12(conf, shader))
      return false;

   return true;
}