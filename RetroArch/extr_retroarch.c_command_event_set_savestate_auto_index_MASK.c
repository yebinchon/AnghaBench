#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_3__* elems; } ;
struct TYPE_13__ {int /*<<< orphan*/  state_slot; } ;
struct TYPE_10__ {int /*<<< orphan*/  savestate_auto_index; } ;
struct TYPE_14__ {TYPE_4__ ints; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_11__ {char const* savestate; } ;
struct TYPE_15__ {TYPE_2__ name; } ;
typedef  TYPE_6__ global_t ;
typedef  int /*<<< orphan*/  elem_base ;
struct TYPE_12__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_LIST_PLAIN ; 
 int /*<<< orphan*/  MSG_FOUND_LAST_STATE_SLOT ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_5__* configuration_settings ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_6__ g_extern ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
   size_t i;
   char *state_dir                   = NULL;
   char *state_base                  = NULL;

   size_t state_size                 = PATH_MAX_LENGTH * sizeof(char);
   struct string_list *dir_list      = NULL;
   unsigned max_idx                  = 0;
   settings_t *settings              = configuration_settings;
   global_t   *global                = &g_extern;

   if (!global || !settings->bools.savestate_auto_index)
      return;

   state_dir                         = (char*)FUNC1(PATH_MAX_LENGTH, sizeof(*state_dir));

   /* Find the file in the same directory as global->savestate_name
    * with the largest numeral suffix.
    *
    * E.g. /foo/path/content.state, will try to find
    * /foo/path/content.state%d, where %d is the largest number available.
    */
   FUNC6(state_dir, global->name.savestate,
         state_size);

   dir_list = FUNC4(state_dir, DIR_LIST_PLAIN, NULL);

   FUNC7(state_dir);

   if (!dir_list)
      return;

   state_base                        = (char*)FUNC1(PATH_MAX_LENGTH, sizeof(*state_base));

   FUNC5(state_base, global->name.savestate,
         state_size);

   for (i = 0; i < dir_list->size; i++)
   {
      unsigned idx;
      char elem_base[128]             = {0};
      const char *end                 = NULL;
      const char *dir_elem            = dir_list->elems[i].data;

      FUNC5(elem_base, dir_elem, sizeof(elem_base));

      if (FUNC11(elem_base, state_base) != elem_base)
         continue;

      end = dir_elem + FUNC10(dir_elem);
      while ((end > dir_elem) && FUNC8((int)end[-1]))
         end--;

      idx = (unsigned)FUNC12(end, NULL, 0);
      if (idx > max_idx)
         max_idx = idx;
   }

   FUNC3(dir_list);
   FUNC7(state_base);

   FUNC2(settings, settings->ints.state_slot, max_idx);

   FUNC0("%s: #%d\n",
         FUNC9(MSG_FOUND_LAST_STATE_SLOT),
         max_idx);
}