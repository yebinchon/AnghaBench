#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  new_path ;
typedef  int /*<<< orphan*/  new_label ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_OK_DL_RDB_ENTRY_SUBMENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,char*,unsigned int,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,struct string_list*,char*) ; 
 struct string_list* FUNC9 () ; 
 struct string_list* FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   union string_list_elem_attr attr;
   char new_label[PATH_MAX_LENGTH];
   char new_path[PATH_MAX_LENGTH];
   int ret                         = -1;
   char *rdb                       = NULL;
   int len                         = 0;
   struct string_list *str_list    = NULL;
   struct string_list *str_list2   = NULL;

   if (!label)
      return FUNC4();

   new_label[0] = new_path[0]      = '\0';

   str_list = FUNC10(label, "|");

   if (!str_list)
      goto end;

   str_list2 = FUNC9();
   if (!str_list2)
      goto end;

   /* element 0 : label
    * element 1 : value
    * element 2 : database path
    */

   attr.i = 0;

   len += FUNC12(str_list->elems[1].data) + 1;
   FUNC6(str_list2, str_list->elems[1].data, attr);

   len += FUNC12(str_list->elems[2].data) + 1;
   FUNC6(str_list2, str_list->elems[2].data, attr);

   rdb = (char*)FUNC0(len, sizeof(char));

   if (!rdb)
      goto end;

   FUNC8(rdb, len, str_list2, "|");
   FUNC11(new_path, rdb, sizeof(new_path));

   FUNC1(new_label,
         FUNC5(MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST),
         str_list->elems[0].data, '_',
         sizeof(new_label));

   ret = FUNC3(new_path, NULL,
         new_label, type, idx, entry_idx,
         ACTION_OK_DL_RDB_ENTRY_SUBMENU);

end:
   if (rdb)
      FUNC2(rdb);
   if (str_list)
      FUNC7(str_list);
   if (str_list2)
      FUNC7(str_list2);

   return ret;
}