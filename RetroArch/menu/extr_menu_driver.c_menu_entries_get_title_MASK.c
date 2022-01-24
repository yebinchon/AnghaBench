#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* action_get_title ) (char const*,char const*,unsigned int,char*,size_t) ;char* action_title_cache; } ;
typedef  TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_7__ {int size; TYPE_1__* list; } ;
typedef  TYPE_3__ file_list_t ;
struct TYPE_5__ {scalar_t__ actiondata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,char const**,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ menu_entries_list ; 
 TYPE_3__* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (char const*,char const*,unsigned int,char*,size_t) ; 

int FUNC5(char *s, size_t len)
{
   unsigned menu_type            = 0;
   const char *path              = NULL;
   const char *label             = NULL;
   const file_list_t *list       = menu_entries_list ? 
      FUNC1(menu_entries_list, 0) : NULL;
   menu_file_list_cbs_t *cbs     = list 
      ? (menu_file_list_cbs_t*)list->list[list->size - 1].actiondata
      : NULL;

   if (!cbs)
      return -1;

   if (cbs && cbs->action_get_title)
   {
      int ret;
      if (!FUNC2(cbs->action_title_cache))
      {
         FUNC3(s, cbs->action_title_cache, len);
         return 0;
      }
      FUNC0(&path, &label, &menu_type, NULL, NULL);
      ret = cbs->action_get_title(path, label, menu_type, s, len);
      if (ret == 1)
         FUNC3(cbs->action_title_cache, s, sizeof(cbs->action_title_cache));
      return ret;
   }
   return 0;
}