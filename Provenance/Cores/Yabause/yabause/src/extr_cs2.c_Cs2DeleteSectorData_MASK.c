#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  size_t u32 ;
struct TYPE_5__ {size_t CR2; int CR3; size_t CR4; int HIRQ; } ;
struct TYPE_8__ {int blockfreespace; TYPE_1__ reg; int /*<<< orphan*/  status; scalar_t__ isonesectorstored; TYPE_2__* partition; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {scalar_t__ numblocks; int* blocknum; TYPE_3__** block; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int CDB_HIRQ_CMOK ; 
 int CDB_HIRQ_EHST ; 
 int /*<<< orphan*/  CDB_STAT_REJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t*,size_t*) ; 
 TYPE_4__* Cs2Area ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t MAX_SELECTORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
   u32 dsdsectoffset;
   u32 dsdbufno;
   u32 dsdsectnum;
   u32 i;

   dsdsectoffset = Cs2Area->reg.CR2;
   dsdbufno = Cs2Area->reg.CR3 >> 8;
   dsdsectnum = Cs2Area->reg.CR4;

   if (dsdbufno >= MAX_SELECTORS)
   {
      FUNC4(CDB_STAT_REJECT);
      Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
      return;
   }

   if (Cs2Area->partition[dsdbufno].numblocks == 0)
   {
      FUNC0("No sectors available\n");

      FUNC4(CDB_STAT_REJECT);
      Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
      return;
   }

   FUNC1(dsdbufno, &dsdsectoffset, &dsdsectnum);

   for (i = dsdsectoffset; i < (dsdsectoffset+dsdsectnum); i++)
   {
      Cs2Area->partition[dsdbufno].size -= Cs2Area->partition[dsdbufno].block[i]->size;
      FUNC2(Cs2Area->partition[dsdbufno].block[i]);
      Cs2Area->partition[dsdbufno].block[i] = NULL;
      Cs2Area->partition[dsdbufno].blocknum[i] = 0xFF;
   }

   // sort remaining blocks
   FUNC3(&Cs2Area->partition[dsdbufno]);

   Cs2Area->partition[dsdbufno].numblocks -= (u8)dsdsectnum;

   if (Cs2Area->blockfreespace == 200)
      Cs2Area->isonesectorstored = 0;

   FUNC4(Cs2Area->status);
   Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_EHST;
}