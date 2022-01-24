#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  scope_t ;
typedef  int /*<<< orphan*/  rxml_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static bool FUNC5(scope_t *scope, rxml_node_t *node, bool can_repeat)
{
   const char *name;
   const char *value;
   const char *start;

   if (!(name = FUNC1(node, "name")))
   {
      FUNC0("video_layout: <param> is missing 'name' attribute\n");
      return false;
   }

   value = FUNC1(node, "value");
   start = FUNC1(node, "start");

   if (can_repeat && start)
   {
      const char *inc = FUNC1(node, "increment");
      const char *ls  = FUNC1(node, "lshift");
      const char *rs  = FUNC1(node, "rshift");

      if (inc || ls || rs)
      {
         FUNC3(scope, name, start, inc, ls, rs);
      }
      else
      {
         FUNC0("video_layout: invalid generator <param name=\"%s\" /> missing increment/shift\n",
            FUNC2(scope, name));
         return false;
      }
   }
   else if (name && value)
   {
      FUNC4(scope, name, value);
   }
   else
   {
      FUNC0("video_layout: invalid parameter <param name=\"%s\" /> missing value\n",
         FUNC2(scope, name));
      return false;
   }

   return true;
}