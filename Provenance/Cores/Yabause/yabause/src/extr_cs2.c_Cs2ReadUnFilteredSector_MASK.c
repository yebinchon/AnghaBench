#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {size_t numblocks; int size; TYPE_7__** block; int /*<<< orphan*/ * blocknum; } ;
typedef  TYPE_3__ partition_struct ;
struct TYPE_12__ {int fn; int cn; int sm; int ci; scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int* data; int size; int /*<<< orphan*/  FAD; } ;
struct TYPE_11__ {int getsectsize; TYPE_2__ workblock; TYPE_1__* cdi; int /*<<< orphan*/  isbufferfull; int /*<<< orphan*/  outconcddev; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* ReadSectorFAD ) (int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_6__* Cs2Area ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 

partition_struct * FUNC5(u32 rufsFAD) {
  partition_struct * rufspartition;
  char syncheader[12] = { 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
                          0xFF, 0xFF, 0xFF, 0x00};

  if ((rufspartition = FUNC1(Cs2Area->outconcddev)) != NULL && !Cs2Area->isbufferfull)
  {
     // Allocate Block
     rufspartition->block[rufspartition->numblocks] = FUNC0(&rufspartition->blocknum[rufspartition->numblocks]);

     if (rufspartition->block[rufspartition->numblocks] == NULL)
        return NULL;

     // read a sector using cd interface function
     if (!Cs2Area->cdi->ReadSectorFAD(rufsFAD, Cs2Area->workblock.data))
        return NULL;

     // convert raw sector to type specified in getsectsize
     switch(Cs2Area->getsectsize)
     {
        case 2048: // user data only
                   if (Cs2Area->workblock.data[0xF] == 0x02)
                   {
                      // is it form1/form2 data?
                      if (!(Cs2Area->workblock.data[0x12] & 0x20))
                      {
                         // form 1
                         FUNC3(rufspartition->block[rufspartition->numblocks]->data,
                                Cs2Area->workblock.data + 24, 2048);
                         Cs2Area->workblock.size = Cs2Area->getsectsize;
                      }
                      else
                      {
                         // form 2
                         FUNC3(rufspartition->block[rufspartition->numblocks]->data,
                                Cs2Area->workblock.data + 24, 2324);
                         Cs2Area->workblock.size = 2324;
                      }
                   }
                   else
                   {
                      FUNC3(rufspartition->block[rufspartition->numblocks]->data,
                             Cs2Area->workblock.data + 16, 2048);
                      Cs2Area->workblock.size = Cs2Area->getsectsize;
                   }
                   break;
        case 2336: // skip sync+header data
                   FUNC3(rufspartition->block[rufspartition->numblocks]->data,
                   Cs2Area->workblock.data + 16, 2336);
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        case 2340: // skip sync data
                   FUNC3(rufspartition->block[rufspartition->numblocks]->data,
                   Cs2Area->workblock.data + 12, 2340);
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        case 2352: // no conversion needed
                   Cs2Area->workblock.size = Cs2Area->getsectsize;
                   break;
        default: break;
     }

     // if mode 2 track, setup the subheader values
     if (FUNC2(syncheader, Cs2Area->workblock.data, 12) == 0 &&
         Cs2Area->workblock.data[0xF] == 0x02)
     {
        rufspartition->block[rufspartition->numblocks]->fn = Cs2Area->workblock.data[0x10];
        rufspartition->block[rufspartition->numblocks]->cn = Cs2Area->workblock.data[0x11];
        rufspartition->block[rufspartition->numblocks]->sm = Cs2Area->workblock.data[0x12];
        rufspartition->block[rufspartition->numblocks]->ci = Cs2Area->workblock.data[0x13];
     }

     Cs2Area->workblock.FAD = rufsFAD;

     // Modify Partition values
     if (rufspartition->size == -1) rufspartition->size = 0;
     rufspartition->size += rufspartition->block[rufspartition->numblocks]->size;
     rufspartition->numblocks++;

     return rufspartition;
  }

  return NULL;
}