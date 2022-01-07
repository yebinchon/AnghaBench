
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct TYPE_9__ {int CR1; int CR3; int HIRQ; } ;
struct TYPE_10__ {int blockfreespace; int datatranstype; size_t datatranspartitionnum; TYPE_4__ reg; int status; scalar_t__ isonesectorstored; TYPE_3__* block; TYPE_2__* partition; scalar_t__ isbufferfull; TYPE_1__* filter; } ;
struct TYPE_8__ {int size; int data; } ;
struct TYPE_7__ {size_t numblocks; int* blocknum; int size; int ** block; } ;
struct TYPE_6__ {int condfalse; int range; scalar_t__ cival; scalar_t__ smval; scalar_t__ fid; scalar_t__ cimask; scalar_t__ smmask; scalar_t__ chan; scalar_t__ mode; scalar_t__ FAD; scalar_t__ condtrue; } ;


 int CDB_HIRQ_CMOK ;
 int CDB_HIRQ_ESEL ;
 TYPE_5__* Cs2Area ;
 int Cs2FreeBlock (int *) ;
 size_t MAX_BLOCKS ;
 size_t MAX_SELECTORS ;
 int doCDReport (int ) ;
 int memset (int ,int ,int) ;

void Cs2ResetSelector(void) {

  u32 i, i2;

  if ((Cs2Area->reg.CR1 & 0xFF) == 0)
  {

     u32 rsbufno = Cs2Area->reg.CR3 >> 8;


     if (rsbufno < MAX_SELECTORS)
     {

        for (i = 0; i < Cs2Area->partition[rsbufno].numblocks; i++)
        {
           Cs2FreeBlock(Cs2Area->partition[rsbufno].block[i]);
           Cs2Area->partition[rsbufno].block[i] = ((void*)0);
           Cs2Area->partition[rsbufno].blocknum[i] = 0xFF;
        }

        Cs2Area->partition[rsbufno].size = -1;
        Cs2Area->partition[rsbufno].numblocks = 0;
     }

     if (Cs2Area->blockfreespace > 0) Cs2Area->isbufferfull = 0;
     if (Cs2Area->blockfreespace == 200)
     {
        Cs2Area->isonesectorstored = 0;
        Cs2Area->datatranstype = -1;
     }
     else if (Cs2Area->datatranspartitionnum == rsbufno)
        Cs2Area->datatranstype = -1;

     doCDReport(Cs2Area->status);
     Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
     return;
  }


  if (Cs2Area->reg.CR1 & 0x80)
  {

     for (i = 0; i < MAX_SELECTORS; i++)
        Cs2Area->filter[i].condfalse = 0xFF;
  }

  if (Cs2Area->reg.CR1 & 0x40)
  {

     for (i = 0; i < MAX_SELECTORS; i++)
        Cs2Area->filter[i].condtrue = (u8)i;
  }

  if (Cs2Area->reg.CR1 & 0x10)
  {

     for (i = 0; i < MAX_SELECTORS; i++)
     {
        Cs2Area->filter[i].FAD = 0;
        Cs2Area->filter[i].range = 0xFFFFFFFF;
        Cs2Area->filter[i].mode = 0;
        Cs2Area->filter[i].chan = 0;
        Cs2Area->filter[i].smmask = 0;
        Cs2Area->filter[i].cimask = 0;
        Cs2Area->filter[i].fid = 0;
        Cs2Area->filter[i].smval = 0;
        Cs2Area->filter[i].cival = 0;
     }
  }

  if (Cs2Area->reg.CR1 & 0x8)
  {

  }

  if (Cs2Area->reg.CR1 & 0x4)
  {

     Cs2Area->isbufferfull = 0;


     for (i = 0; i < MAX_SELECTORS; i++)
     {
        Cs2Area->partition[i].size = -1;
        Cs2Area->partition[i].numblocks = 0;

        for (i2 = 0; i2 < MAX_BLOCKS; i2++)
        {
           Cs2Area->partition[i].block[i2] = ((void*)0);
           Cs2Area->partition[i].blocknum[i2] = 0xFF;
        }
     }


     for (i = 0; i < MAX_BLOCKS; i++)
     {
        Cs2Area->block[i].size = -1;
        memset(Cs2Area->block[i].data, 0, 2352);
     }

     Cs2Area->isonesectorstored = 0;
     Cs2Area->datatranstype = -1;
  }

  doCDReport(Cs2Area->status);
  Cs2Area->reg.HIRQ |= CDB_HIRQ_CMOK | CDB_HIRQ_ESEL;
}
