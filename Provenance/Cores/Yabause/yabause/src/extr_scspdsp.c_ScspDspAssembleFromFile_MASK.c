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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 

void FUNC4(char * filename, u64* output)
{
   int i;
   char line[1024] = { 0 };

   FILE * fp = FUNC3(filename, "r");

   if (!fp)
   {
      return;
   }

   for (i = 0; i < 128; i++)
   {
      char * result = FUNC2(line, sizeof(line), fp);
      output[i] = FUNC0(line);
   }
   FUNC1(fp);
}