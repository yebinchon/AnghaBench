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
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct config_file_userdata {int /*<<< orphan*/  conf; int /*<<< orphan*/ * prefix; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 
 struct string_list* FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(void *userdata, const char *key_str,
      int **values, unsigned *out_num_values,
      const int *default_values, unsigned num_default_values)
{
   char key[2][256];
   struct config_file_userdata *usr = (struct config_file_userdata*)userdata;
   char *str = NULL;
   FUNC2(key[0], usr->prefix[0], key_str, '_', sizeof(key[0]));
   FUNC2(key[1], usr->prefix[1], key_str, '_', sizeof(key[1]));

   if (  FUNC1(usr->conf, key[0], &str) ||
         FUNC1(usr->conf, key[1], &str))
   {
      unsigned i;
      struct string_list *list = FUNC6(str, " ");
      *values = (int*)FUNC0(list->size, sizeof(int));
      for (i = 0; i < list->size; i++)
         (*values)[i] = (int)FUNC7(list->elems[i].data, NULL);
      *out_num_values = (unsigned)list->size;
      FUNC5(list);
      FUNC3(str);
      return true;
   }

   *values = (int*)FUNC0(num_default_values, sizeof(int));
   FUNC4(*values, default_values, sizeof(int) * num_default_values);
   *out_num_values = num_default_values;
   return false;
}