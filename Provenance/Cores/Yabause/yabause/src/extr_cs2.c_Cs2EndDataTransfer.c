
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
typedef size_t s32 ;
struct TYPE_4__ {int CR1; int CR2; int HIRQ; scalar_t__ CR4; scalar_t__ CR3; } ;
struct TYPE_6__ {int cdwnum; int status; int datatranstype; size_t datatranssectpos; size_t datasectstotrans; int blockfreespace; TYPE_1__ reg; int isonesectorstored; TYPE_2__* datatranspartition; } ;
struct TYPE_5__ {int size; int* blocknum; size_t numblocks; int ** block; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_EHST ;
 TYPE_3__* Cs2Area ;
 int Cs2FreeBlock (int *) ;
 int Cs2SortBlocks (TYPE_2__*) ;

void Cs2EndDataTransfer(void) {
  s32 i;
  if (Cs2Area->cdwnum)
  {
     Cs2Area->reg.CR1 = (u16)((Cs2Area->status << 8) | ((Cs2Area->cdwnum >> 17) & 0xFF));
     Cs2Area->reg.CR2 = (u16)(Cs2Area->cdwnum >> 1);
     Cs2Area->reg.CR3 = 0;
     Cs2Area->reg.CR4 = 0;
  }
  else
  {
     Cs2Area->reg.CR1 = (Cs2Area->status << 8) | 0xFF;
     Cs2Area->reg.CR2 = 0xFFFF;
     Cs2Area->reg.CR3 = 0;
     Cs2Area->reg.CR4 = 0;
  }




  switch (Cs2Area->datatranstype)
  {
     case 0:

        Cs2Area->reg.HIRQ |= CDB_HIRQ_EHST;
        break;
     case 2:
     {



        if (Cs2Area->datatranspartition->size <= 0) break;

        Cs2Area->datatranstype = -1;


        for (i = Cs2Area->datatranssectpos; i < (Cs2Area->datatranssectpos + Cs2Area->datasectstotrans); i++)
        {
           Cs2FreeBlock(Cs2Area->datatranspartition->block[i]);
           Cs2Area->datatranspartition->block[i] = ((void*)0);
           Cs2Area->datatranspartition->blocknum[i] = 0xFF;
        }


        Cs2SortBlocks(Cs2Area->datatranspartition);

        Cs2Area->datatranspartition->size -= Cs2Area->cdwnum;
        Cs2Area->datatranspartition->numblocks -= Cs2Area->datasectstotrans;

        if (Cs2Area->blockfreespace == 200) Cs2Area->isonesectorstored = 0;

        Cs2Area->reg.HIRQ |= CDB_HIRQ_EHST;
        break;
     }
     default: break;
  }

  Cs2Area->cdwnum = 0;

  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK;
}
