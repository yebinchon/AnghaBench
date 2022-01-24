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
 int COUNT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int,int,char**) ; 
 int FUNC4 (int,int,char**) ; 
 int FUNC5 (int,char**) ; 
 int FUNC6 (int,int,char**) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC7(int argc, char **argv)
{
   int count = COUNT;

   while (argc > 1)
   {
      if (argc > 2 && FUNC2(argv[1], "-c") == 0)
      {
         count = FUNC0(argv[2]);
         argc -= 2;
         argv += 2;
      }

      else if (FUNC2(argv[1], "-v") == 0)
      {
         ++verbose;
         --argc;
         ++argv;
      }

      else
         break;
   }

   if (count > 0 && argc > 1)
   {
      if (FUNC2(argv[1], "ascii") == 0)
         return FUNC3(count, argc-1, argv+1);
      else if (FUNC2(argv[1], "checkfp") == 0)
         return FUNC4(count, argc-1, argv+1);
      else if (FUNC2(argv[1], "muldiv") == 0)
         return FUNC6(count, argc-1, argv+1);
      else if (FUNC2(argv[1], "gamma") == 0)
         return FUNC5(argc-1, argv+1);
   }

   /* Bad argument: */
   FUNC1(stderr,
      "usage: tarith [-v] [-c count] {ascii,muldiv,gamma} [args]\n");
   FUNC1(stderr, " arguments: ascii [-a (all results)] [-e error%%]\n");
   FUNC1(stderr, "            checkfp [-l max-number-chars]\n");
   FUNC1(stderr, "            muldiv\n");
   FUNC1(stderr, "            gamma -s (silent) -g (only gamma; no log)\n");
   return 1;
}