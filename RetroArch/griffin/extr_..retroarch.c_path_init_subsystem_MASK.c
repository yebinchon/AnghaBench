#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct string_list {int dummy; } ;
struct retro_subsystem_memory_info {char* extension; int /*<<< orphan*/  type; } ;
struct retro_subsystem_info {TYPE_2__* roms; int /*<<< orphan*/  num_roms; } ;
typedef  int /*<<< orphan*/  savename ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {TYPE_1__ subsystem; } ;
typedef  TYPE_5__ rarch_system_info_t ;
struct TYPE_13__ {char* savefile; } ;
struct TYPE_15__ {TYPE_4__ name; } ;
typedef  TYPE_6__ global_t ;
typedef  int /*<<< orphan*/  ext ;
struct TYPE_16__ {TYPE_3__* elems; scalar_t__ size; } ;
struct TYPE_12__ {char* data; } ;
struct TYPE_11__ {unsigned int num_memory; int /*<<< orphan*/ * memory; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  MSG_REDIRECTING_SAVEFILE_TO ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_DIR_CURRENT_SAVEFILE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_SAVE_PATH ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_6__ g_extern ; 
 struct retro_subsystem_info* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 char* path_main_basename ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__ runloop_system ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct string_list*,char*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,size_t) ; 
 TYPE_7__* subsystem_fullpaths ; 

__attribute__((used)) static bool FUNC19(void)
{
   unsigned i, j;
   const struct retro_subsystem_info *info = NULL;
   global_t   *global                      = &g_extern;
   rarch_system_info_t             *system = &runloop_system;
   bool subsystem_path_empty               = FUNC12(RARCH_PATH_SUBSYSTEM);

   if (!system || subsystem_path_empty)
      return false;
   /* For subsystems, we know exactly which RAM types are supported. */

   info = FUNC7(
         system->subsystem.data,
         system->subsystem.size,
         FUNC10(RARCH_PATH_SUBSYSTEM));

   /* We'll handle this error gracefully later. */
   if (info)
   {
      unsigned num_content = FUNC0(info->num_roms,
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
            char *path       = (char*)FUNC8(
                  PATH_MAX_LENGTH * sizeof(char));
            const struct retro_subsystem_memory_info *mem =
               (const struct retro_subsystem_memory_info*)
               &info->roms[i].memory[j];

            path[0] = ext[0] = '\0';

            FUNC16(ext, sizeof(ext), ".%s", mem->extension);
            FUNC18(savename, subsystem_fullpaths->elems[i].data, sizeof(savename));
            FUNC13(savename);

            if (FUNC11(FUNC2(RARCH_DIR_CURRENT_SAVEFILE)))
            {
               /* Use SRAM dir */
               /* Redirect content fullpath to save directory. */
               FUNC18(path, FUNC2(RARCH_DIR_CURRENT_SAVEFILE), path_size);
               FUNC4(path,
                     savename, ext,
                     path_size);
            }
            else
               FUNC3(path, savename, ext, path_size);

            FUNC1("%s \"%s\".\n",
               FUNC9(MSG_REDIRECTING_SAVEFILE_TO),
               path);

            attr.i = mem->type;
            FUNC17((struct string_list*)FUNC15(), path, attr);
            FUNC6(path);
         }
      }
   }

   if (global)
   {
      /* Let other relevant paths be inferred from the main SRAM location. */
      if (!FUNC14(RARCH_OVERRIDE_SETTING_SAVE_PATH, NULL))
         FUNC5(global->name.savefile,
               path_main_basename,
               ".srm",
               sizeof(global->name.savefile));

      if (FUNC11(global->name.savefile))
      {
         FUNC4(global->name.savefile,
               path_main_basename,
               ".srm",
               sizeof(global->name.savefile));
         FUNC1("%s \"%s\".\n",
               FUNC9(MSG_REDIRECTING_SAVEFILE_TO),
               global->name.savefile);
      }
   }

   return true;
}