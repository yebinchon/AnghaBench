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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 double FUNC3 (char const*,char**) ; 

__attribute__((used)) static double
FUNC4(const char *arg)
{
   if (FUNC2(arg, "filled") == 0)
      return 0;

   else
   {
      char *ep = NULL;
      double w = FUNC3(arg, &ep);

      if (ep != NULL && *ep == 0 && w > 0)
         return w;
   }

   FUNC1(stderr, "genpng: invalid line width %s\n", arg);
   FUNC0(1);
}