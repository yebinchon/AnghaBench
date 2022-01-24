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
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 

__attribute__((used)) static int FUNC4(const char *fname, char *buff, size_t size)
{
   int ret;
   FILE *f = FUNC1(fname, "r");

   if (!f)
      return -1;

   ret = FUNC2(buff, 1, size - 1, f);
   FUNC0(f);

   if (ret <= 0)
      return -1;

   buff[ret] = 0;
   for (ret--; ret >= 0 && FUNC3(buff[ret]); ret--)
      buff[ret] = 0;

   return 0;
}