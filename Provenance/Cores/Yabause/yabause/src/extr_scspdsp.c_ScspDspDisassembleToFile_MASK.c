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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC4(char * filename)
{
   int i;
   FILE * fp = FUNC2(filename,"w");

   if (!fp)
   {
      return;
   }

   for (i = 0; i < 128; i++)
   {
      char output[1024] = { 0 };
      FUNC0(i, output);
      FUNC3(fp, "%s\n", output);
   }

   FUNC1(fp);
}