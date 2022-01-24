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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t) ; 

int FUNC6(const char *filename, u32 addr, u32 size)
{
   FILE *fp;
   u8 *buffer;
   u32 i;

   if (!filename)
      return -1;

   if ((fp = FUNC2(filename, "wb")) == NULL)
      return -1;

   if ((buffer = (u8 *)FUNC5(size)) == NULL)
   {
      FUNC1(fp);
      return -2;
   }

   for (i = 0; i < size; i++)
      buffer[i] = FUNC0(addr+i);

   FUNC4((void *)buffer, 1, size, fp);
   FUNC1(fp);
   FUNC3(buffer);

   return 0;
}