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
 int /*<<< orphan*/  logmsg ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 

int FUNC7(int argc, const char **argv)
{
   if (argc != 3)
   {
      FUNC4(argv[0]);
   }
   const char *lockfile = argv[2];
   if (FUNC3(argv[1], "lock") == 0)
   {
      int rc = FUNC6(lockfile, logmsg);
      if (rc)
      {
         FUNC1("failed to lock %s\n", lockfile);
         FUNC0(1);
      }
      FUNC2(300);
   }
   else if (FUNC3(argv[1], "check") == 0)
   {
      FUNC1("%s\n",
             FUNC5(lockfile) ?
             "running" : "not running");
   }
   else
   {
      FUNC4(argv[0]);
   }
   return 0;
}