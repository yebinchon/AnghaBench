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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Boolean_T ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  Error_ ; 
 int /*<<< orphan*/  Success_ ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

Boolean_T FUNC6(char *name, uint32_t *crc, long *charcnt)
{
      register FILE *fin;
      register uint32_t oldcrc32;
      register int c;

      oldcrc32 = 0xFFFFFFFF; *charcnt = 0;
#ifdef MSDOS
      if ((fin=fopen(name, "rb"))==NULL)
#else
      if ((fin=FUNC3(name, "r"))==NULL)
#endif
      {
            FUNC5(name);
            return Error_;
      }
      while ((c=FUNC4(fin))!=EOF)
      {
            ++*charcnt;
            oldcrc32 = FUNC0(c, oldcrc32);
      }

      if (FUNC2(fin))
      {
            FUNC5(name);
            *charcnt = -1;
      }
      FUNC1(fin);

      *crc = oldcrc32 = ~oldcrc32;

      return Success_;
}