#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  cheatlist_struct ;
struct TYPE_7__ {int type; int addr; int val; int enable; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* cheatlist ; 
 int cheatsize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int numcheats ; 
 TYPE_3__* FUNC6 (TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC9(const char *filename)
{
   FILE *fp;
   int i;
   char id[4];
   char desc[256];
   IOCheck_struct check = { 0, 0 };

   if (!filename)
      return -1;

   if ((fp = FUNC4(filename, "rb")) == NULL)
      return -1;

   FUNC8(&check, (void *)id, 1, 4, fp);
   if (FUNC7(id, "YCHT", 4) != 0)
   {
      FUNC3(fp);
      return -2;
   }

   FUNC1();

   FUNC8(&check, (void *)&numcheats, sizeof(int), 1, fp);
#ifndef WORDS_BIGENDIAN
   FUNC2(numcheats);
#endif

   if (numcheats >= cheatsize)
   {
      cheatlist = FUNC6(cheatlist, sizeof(cheatlist_struct) * (cheatsize * 2));
      FUNC5((void *)cheatlist, 0, sizeof(cheatlist_struct) * (cheatsize * 2));
      cheatsize *= 2;
   }

   for(i = 0; i < numcheats; i++)
   {
      u8 descsize;

      FUNC8(&check, (void *)&cheatlist[i].type, sizeof(int), 1, fp);
      FUNC8(&check, (void *)&cheatlist[i].addr, sizeof(u32), 1, fp);
      FUNC8(&check, (void *)&cheatlist[i].val, sizeof(u32), 1, fp);
      FUNC8(&check, (void *)&descsize, sizeof(u8), 1, fp);
      FUNC8(&check, (void *)desc, sizeof(char), descsize, fp);
      FUNC0(i, desc);
      FUNC8(&check, (void *)&cheatlist[i].enable, sizeof(int), 1, fp);
#ifndef WORDS_BIGENDIAN
      FUNC2(cheatlist[i].type);
      FUNC2(cheatlist[i].addr);
      FUNC2(cheatlist[i].val);
      FUNC2(cheatlist[i].enable);
#endif
   }

   FUNC3 (fp);

   return 0;
}