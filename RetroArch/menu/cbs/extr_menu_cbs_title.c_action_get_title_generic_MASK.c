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
struct string_list {scalar_t__ size; TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  elem0_path ;
struct TYPE_2__ {char const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 
 struct string_list* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC7(char *s, size_t len, const char *path,
      const char *text)
{
   struct string_list *list_path    = NULL;

   if (!FUNC2(path))
      list_path = FUNC4(path, "|");

   if (list_path)
   {
      char elem0_path[255];

      elem0_path[0] = '\0';

      if (list_path->size > 0)
         FUNC6(elem0_path, list_path->elems[0].data, sizeof(elem0_path));
      FUNC3(list_path);
      FUNC6(s, text, len);

      if (!FUNC2(elem0_path))
      {
         FUNC5(s, "- ", len);
         FUNC5(s, FUNC1(elem0_path), len);
      }
   }
   else
      FUNC6(s, FUNC0(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE), len);

   return 0;
}