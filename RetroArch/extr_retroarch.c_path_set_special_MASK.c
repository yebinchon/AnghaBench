#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_4__ {char* savestate; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef  TYPE_2__ global_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_REDIRECTING_SAVESTATE_TO ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_DIR_CURRENT_SAVESTATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 TYPE_2__ g_extern ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*,char*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,struct string_list*,char*) ; 
 struct string_list* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 struct string_list* subsystem_fullpaths ; 

void FUNC14(char **argv, unsigned num_content)
{
   unsigned i;
   char str[PATH_MAX_LENGTH];
   union string_list_elem_attr attr;
   struct string_list *subsystem_paths = NULL;
   global_t   *global                  = &g_extern;

   /* First content file is the significant one. */
   FUNC7(argv[0]);

   subsystem_fullpaths = FUNC12();
   subsystem_paths = FUNC12();
   FUNC8(subsystem_fullpaths);

   attr.i = 0;

   for (i = 0; i < num_content; i++)
   {
      FUNC9(subsystem_fullpaths, argv[i], attr);
      FUNC13(str, argv[i], sizeof(str));
      FUNC6(str);
      FUNC9(subsystem_paths, FUNC4(str), attr);
   }
   str[0] = '\0';
   FUNC11(str, sizeof(str), subsystem_paths, " + ");

   /* We defer SRAM path updates until we can resolve it.
    * It is more complicated for special content types. */
   if (global)
   {
      if (FUNC5(FUNC1(RARCH_DIR_CURRENT_SAVESTATE)))
         FUNC13(global->name.savestate, FUNC1(RARCH_DIR_CURRENT_SAVESTATE),
               sizeof(global->name.savestate));
      if (FUNC5(global->name.savestate))
      {
         FUNC2(global->name.savestate,
               str,
               ".state",
               sizeof(global->name.savestate));
         FUNC0("%s \"%s\".\n",
               FUNC3(MSG_REDIRECTING_SAVESTATE_TO),
               global->name.savestate);
      }
   }

   if (subsystem_paths)
      FUNC10(subsystem_paths);
}