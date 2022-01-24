#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rarch_dir_list {TYPE_4__* list; scalar_t__ ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/ * directory_video_shader; } ;
struct TYPE_9__ {TYPE_1__ paths; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_10__ {unsigned int size; TYPE_2__* elems; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_LIST_SHADERS ; 
 int /*<<< orphan*/  MSG_FOUND_SHADER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* configuration_settings ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  dir_shader_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(void)
{
   unsigned i;
   struct rarch_dir_list *dir_list = (struct rarch_dir_list*)&dir_shader_list;
   settings_t *settings            = configuration_settings;

   if (!settings || !*settings->paths.directory_video_shader)
      return false;

   dir_list->list = FUNC2(
         settings->paths.directory_video_shader, DIR_LIST_SHADERS, NULL);

   if (!dir_list->list || dir_list->list->size == 0)
   {
      FUNC1();
      return false;
   }

   dir_list->ptr  = 0;
   FUNC3(dir_list->list, false);

   for (i = 0; i < dir_list->list->size; i++)
      FUNC0("%s \"%s\"\n",
            FUNC4(MSG_FOUND_SHADER),
            dir_list->list->elems[i].data);
   return true;
}