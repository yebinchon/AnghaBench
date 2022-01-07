
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {size_t numblocks; int size; TYPE_7__** block; int * blocknum; } ;
typedef TYPE_3__ partition_struct ;
struct TYPE_12__ {int fn; int cn; int sm; int ci; scalar_t__ size; int data; } ;
struct TYPE_9__ {int* data; int size; int FAD; } ;
struct TYPE_11__ {int getsectsize; TYPE_2__ workblock; TYPE_1__* cdi; int isbufferfull; int outconcddev; } ;
struct TYPE_8__ {int (* ReadSectorFAD ) (int ,int*) ;} ;


 TYPE_7__* Cs2AllocateBlock (int *) ;
 TYPE_6__* Cs2Area ;
 TYPE_3__* Cs2GetPartition (int ) ;
 scalar_t__ memcmp (char*,int*,int) ;
 int memcpy (int ,int*,int) ;
 int stub1 (int ,int*) ;

partition_struct * Cs2ReadUnFilteredSector(u32 rufsFAD) {
  partition_struct * rufspartition;
  char syncheader[12] = { 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                          0xFF, 0xFF, 0xFF, 0x00};

  if ((rufspartition = Cs2GetPartition(Cs2Area->outconcddev)) != ((void*)0) && !Cs2Area->isbufferfull)
  {

     rufspartition->block[rufspartition->numblocks] = Cs2AllocateBlock(&rufspartition->blocknum[rufspartition->numblocks]);

     if (rufspartition->block[rufspartition->numblocks] == ((void*)0))
        return ((void*)0);


     if (!Cs2Area->cdi->ReadSectorFAD(rufsFAD, Cs2Area->workblock.data))
        return ((void*)0);


     switch(Cs2Area->getsectsize)
     {
        case 2048:
                   if (Cs2Area->workblock.data[0xF] == 0x02)
                   {

                      if (!(Cs2Area->workblock.data[0x12] & 0x20))
                      {

                         memcpy(rufspartition->block[rufspartition->numblocks]->data,
                                Cs2Area->workblock.data + 24, 2048);
                         Cs2Area->workblock.size = Cs2Area->getsectsize;
                      }
                      else
                      {

                         memcpy(rufspartition->block[rufspartition->numblocks]->data,
                                Cs2Area->workblock.data + 24, 2324);
                         Cs2Area->workblock.size = 2324;
                      }
                   }
                   else
                   {
                      memcpy(rufspartition->block[rufspartition->numblocks]->data,
                             Cs2Area->workblock.data + 16, 2048);
                      Cs2Area->workblock.size = Cs2Area->getsectsize;
                   }
                   break;
        case 2336:
                   memcpy(rufspartition->block[rufspartition->numblocks]->data,
                   Cs2Area->workblock.data + 16, 2336);
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        case 2340:
                   memcpy(rufspartition->block[rufspartition->numblocks]->data,
                   Cs2Area->workblock.data + 12, 2340);
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        case 2352:
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        default: break;
     }


     if (memcmp(syncheader, Cs2Area->workblock.data, 12) == 0 &&
         Cs2Area->workblock.data[0xF] == 0x02)
     {
        rufspartition->block[rufspartition->numblocks]->fn = Cs2Area->workblock.data[0x10];
        rufspartition->block[rufspartition->numblocks]->cn = Cs2Area->workblock.data[0x11];
        rufspartition->block[rufspartition->numblocks]->sm = Cs2Area->workblock.data[0x12];
        rufspartition->block[rufspartition->numblocks]->ci = Cs2Area->workblock.data[0x13];
     }

     Cs2Area->workblock.FAD = rufsFAD;


     if (rufspartition->size == -1) rufspartition->size = 0;
     rufspartition->size += rufspartition->block[rufspartition->numblocks]->size;
     rufspartition->numblocks++;

     return rufspartition;
  }

  return ((void*)0);
}
