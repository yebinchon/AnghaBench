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
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ verbose ; 

int
FUNC2(int argc, char **argv)
{
   int i;
   int extracted = 0;

   for (i=1; i<argc; ++i)
   {
      if (FUNC1(argv[i], "-q") == 0)
         verbose = 0;

      else if (FUNC0(argv[i]))
         extracted = 1;
   }

   /* Exit code is true if any extract succeeds */
   return extracted == 0;
}