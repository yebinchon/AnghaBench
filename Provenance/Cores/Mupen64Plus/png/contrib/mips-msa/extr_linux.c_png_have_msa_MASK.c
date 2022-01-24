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
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(png_structp png_ptr)
{
   FILE *f = FUNC3("/proc/cpuinfo", "rb");

   char *string = "msa";
   char word[10];

   if (f != NULL)
   {
      while(!FUNC1(f))
      {
         int ch = FUNC2(f);
         static int i = 0;

         while(!(ch <= 32))
         {
            word[i++] = ch;
            ch = FUNC2(f);
         }

         int val = FUNC6(string, word);

         if (val == 0)
            return 1;

         i = 0;
         FUNC4(word, 0, 10);
      }

      FUNC0(f);
   }
#ifdef PNG_WARNINGS_SUPPORTED
   else
      png_warning(png_ptr, "/proc/cpuinfo open failed");
#endif
   return 0;
}