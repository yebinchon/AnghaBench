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
struct timespec {unsigned long tv_sec; long tv_nsec; } ;
typedef  int /*<<< orphan*/  png_int_32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static int FUNC8(FILE *fp, int nfiles, png_int_32 transforms)
{
   int i;
   struct timespec before, after;

   /* Clear out all errors: */
   FUNC7(fp);

   if (FUNC3(&before))
   {
      for (i=0; i<nfiles; ++i)
      {
         if (FUNC6(fp, transforms, NULL/*write*/))
         {
            if (FUNC0(fp))
            {
               FUNC4("temporary file");
               FUNC2(stderr, "file %d: error reading PNG data\n", i);
               return 0;
            }
         }

         else
         {
            FUNC4("temporary file");
            FUNC2(stderr, "file %d: error from libpng\n", i);
            return 0;
         }
      }
   }

   else
      return 0;

   if (FUNC3(&after))
   {
      /* Work out the time difference and print it - this is the only output,
       * so flush it immediately.
       */
      unsigned long s = after.tv_sec - before.tv_sec;
      long ns = after.tv_nsec - before.tv_nsec;

      if (ns < 0)
      {
         --s;
         ns += 1000000000;

         if (ns < 0)
         {
            FUNC2(stderr, "timepng: bad clock from kernel\n");
            return 0;
         }
      }

      FUNC5("%lu.%.9ld\n", s, ns);
      FUNC1(stdout);
      if (FUNC0(stdout))
      {
         FUNC2(stderr, "timepng: error writing output\n");
         return 0;
      }

      /* Successful return */
      return 1;
   }

   else
      return 0;
}