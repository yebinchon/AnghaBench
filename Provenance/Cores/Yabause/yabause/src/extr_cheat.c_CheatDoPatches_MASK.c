#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int type; int /*<<< orphan*/  addr; int /*<<< orphan*/  val; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
#define  CHEATTYPE_BYTEWRITE 132 
#define  CHEATTYPE_ENABLE 131 
#define  CHEATTYPE_LONGWRITE 130 
#define  CHEATTYPE_NONE 129 
#define  CHEATTYPE_WORDWRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* cheatlist ; 

void FUNC5(void)
{
   int i;

   for (i = 0; ; i++)
   {
      switch (cheatlist[i].type)
      {
         case CHEATTYPE_NONE:
            return;
         case CHEATTYPE_ENABLE:
            if (cheatlist[i].enable == 0)
               continue;
            if (FUNC0(cheatlist[i].addr) != cheatlist[i].val)
               return;
            break;
         case CHEATTYPE_BYTEWRITE:
            if (cheatlist[i].enable == 0)
               continue;
            FUNC1(cheatlist[i].addr, (u8)cheatlist[i].val);
            FUNC4(cheatlist[i].addr, 1);
            break;
         case CHEATTYPE_WORDWRITE:
            if (cheatlist[i].enable == 0)
               continue;
            FUNC3(cheatlist[i].addr, (u16)cheatlist[i].val);
            FUNC4(cheatlist[i].addr, 2);
            break;
         case CHEATTYPE_LONGWRITE:
            if (cheatlist[i].enable == 0)
               continue;
            FUNC2(cheatlist[i].addr, cheatlist[i].val);
            FUNC4(cheatlist[i].addr, 4);
            break;            
      }
   }
}