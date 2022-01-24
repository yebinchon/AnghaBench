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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 

int FUNC6(int argc, char **argv)
{
   int err = 0;

   FUNC4("/* adler32, crc32, MD5[16], intent, date, length, file-name */\n");

   if (argc > 1)
   {
      int i;

      for (i=1; i<argc; ++i)
      {
         FILE *ip = FUNC1(argv[i], "rb");

         if (ip == NULL || !FUNC5(ip, argv[i]))
         {
            err = 1;
            FUNC3(argv[i]);
            FUNC2(stderr, "%s: read error\n", argv[i]);
            FUNC4("/* ERROR: %s */\n", argv[i]);
         }

         (void)FUNC0(ip);
      }
   }

   else
   {
      if (!FUNC5(stdin, "-"))
      {
         err = 1;
         FUNC3("stdin");
         FUNC2(stderr, "stdin: read error\n");
         FUNC4("/* ERROR: stdin */\n");
      }
   }

   return err;
}