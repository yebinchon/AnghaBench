#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* scratch2_buf; char* scratch_buf; int /*<<< orphan*/  detect_content_path; int /*<<< orphan*/  deferred_path; } ;
typedef  TYPE_1__ menu_handle_t ;
struct TYPE_8__ {char const* dir; char const* path; char const* menu_label; int len; int /*<<< orphan*/  s; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ menu_content_ctx_defer_info_t ;
typedef  int /*<<< orphan*/  core_info_list_t ;
struct TYPE_9__ {int /*<<< orphan*/ * environ_get; int /*<<< orphan*/ * args; int /*<<< orphan*/ * argv; int /*<<< orphan*/  argc; } ;
typedef  TYPE_3__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_DEFERRED_CORE_LIST ; 
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,char const*,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,char*,int) ; 
 TYPE_1__* FUNC7 () ; 
 size_t FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   menu_content_ctx_defer_info_t def_info;
   int ret                             = 0;
   core_info_list_t *list              = NULL;
   const char *menu_path               = NULL;
   const char *content_path            = NULL;
   char *new_core_path                 = NULL;
   menu_handle_t *menu                 = FUNC7();

   if (!menu)
      return FUNC5();

   menu_path           = menu->scratch2_buf;
   content_path        = menu->scratch_buf;

   FUNC0(&list);

   def_info.data       = list;
   def_info.dir        = menu_path;
   def_info.path       = content_path;
   def_info.menu_label = label;
   def_info.s          = menu->deferred_path;
   def_info.len        = sizeof(menu->deferred_path);

   new_core_path       = (char*)
      FUNC4(PATH_MAX_LENGTH * sizeof(char));
   new_core_path[0]    = '\0';

   if (FUNC6(&def_info, false,
            new_core_path, PATH_MAX_LENGTH * sizeof(char)))
      ret = -1;

   FUNC1(menu->detect_content_path, menu_path, content_path,
         sizeof(menu->detect_content_path));

   switch (ret)
   {
      case -1:
         {
            content_ctx_info_t content_info;

            content_info.argc                   = 0;
            content_info.argv                   = NULL;
            content_info.args                   = NULL;
            content_info.environ_get            = NULL;

            ret                                 = 0;

            if (!FUNC9(
                     new_core_path, def_info.s,
                     &content_info,
                     CORE_TYPE_PLAIN,
                     NULL, NULL))
               ret = -1;
         }
         break;
      case 0:
         idx = FUNC8();
         ret = FUNC3(path, NULL,
               label, type,
               idx, entry_idx, ACTION_OK_DL_DEFERRED_CORE_LIST);
         break;
      default:
         break;
   }

   FUNC2(new_core_path);
   return ret;
}