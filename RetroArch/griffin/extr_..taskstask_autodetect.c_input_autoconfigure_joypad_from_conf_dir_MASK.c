#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  retro_task_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  config_file_t ;
typedef  int /*<<< orphan*/  best_path ;
struct TYPE_7__ {char* autoconfig_directory; } ;
typedef  TYPE_2__ autoconfig_params_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_AUTOCONFIG ; 
 int /*<<< orphan*/  DIR_LIST_AUTOCONFIG ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 struct string_list* FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC10(
      autoconfig_params_t *params, retro_task_t *task)
{
   size_t i;
   char path[PATH_MAX_LENGTH];
   char best_path[PATH_MAX_LENGTH];
   int ret                    = 0;
   int index                  = -1;
   int current_best           = 0;
   config_file_t *best_conf   = NULL;
   struct string_list *list   = NULL;

   best_path[0]               = '\0';
   path[0]                    = '\0';

   FUNC4(path, sizeof(path),
         APPLICATION_SPECIAL_DIRECTORY_AUTOCONFIG);

   list = FUNC3(path, DIR_LIST_AUTOCONFIG, "cfg");

   if (!list || !list->size)
   {
      if (list)
      {
         FUNC8(list);
         list = NULL;
      }
      if (!FUNC7(params->autoconfig_directory))
         list = FUNC3(params->autoconfig_directory,
               DIR_LIST_AUTOCONFIG, "cfg");
   }

   if (!list)
   {
      FUNC0("[Autoconf]: No profiles found.\n");
      return false;
   }

   FUNC0("[Autoconf]: %d profiles found.\n", (int)list->size);

   for (i = 0; i < list->size; i++)
   {
      int res;
      config_file_t *conf = FUNC2(list->elems[i].data);
      
      if (!conf)
         continue;

      res  = FUNC6(conf, params);

      if (res >= current_best)
      {
         index        = (int)i;
         current_best = res;
         if (best_conf)
            FUNC1(best_conf);
         FUNC9(best_path, list->elems[i].data, sizeof(best_path));
         best_conf    = NULL;
         best_conf    = conf;
      }
      else
         FUNC1(conf);
   }

   if (index >= 0 && current_best > 0 && best_conf)
   {
      FUNC0("[Autoconf]: selected configuration: %s\n", best_path);
      FUNC5(best_conf, params, task);
      ret = 1;
   }

   if (best_conf)
      FUNC1(best_conf);

   FUNC8(list);

   if (ret == 0)
      return false;
   return true;
}