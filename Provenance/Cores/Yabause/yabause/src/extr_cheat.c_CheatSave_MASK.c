#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int type; int addr; int val; int enable; } ;
typedef  TYPE_1__ cheatlist_struct ;
struct TYPE_9__ {scalar_t__ desc; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* cheatlist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_5__*,int) ; 
 int numcheats ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC7(const char *filename)
{
   FILE *fp;
   int i;
   int num;
   IOCheck_struct check = { 0, 0 };

   if (!filename)
      return -1;

   if ((fp = FUNC2(filename, "wb")) == NULL)
      return -1;

   FUNC3(fp, "YCHT");
   num = numcheats;
#ifndef WORDS_BIGENDIAN
   FUNC0(num);
#endif
   FUNC6(&check, (void *)&num, sizeof(int), 1, fp);

   for(i = 0; i < numcheats; i++)
   {
      u8 descsize;
      cheatlist_struct cheat;

      FUNC4(&cheat, &cheatlist[i], sizeof(cheatlist_struct));
#ifndef WORDS_BIGENDIAN
      FUNC0(cheat.type);
      FUNC0(cheat.addr);
      FUNC0(cheat.val);
      FUNC0(cheat.enable);
#endif
      FUNC6(&check, (void *)&cheat.type, sizeof(int), 1, fp);
      FUNC6(&check, (void *)&cheat.addr, sizeof(u32), 1, fp);
      FUNC6(&check, (void *)&cheat.val, sizeof(u32), 1, fp);
      descsize = (u8)FUNC5(cheatlist[i].desc)+1;
      FUNC6(&check, (void *)&descsize, sizeof(u8), 1, fp);
      FUNC6(&check, (void *)cheatlist[i].desc, sizeof(char), descsize, fp);
      FUNC6(&check, (void *)&cheat.enable, sizeof(int), 1, fp);
   }

   FUNC1 (fp);

   return 0;
}