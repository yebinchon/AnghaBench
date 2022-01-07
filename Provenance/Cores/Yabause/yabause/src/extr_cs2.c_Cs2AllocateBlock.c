
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ block_struct ;
struct TYPE_5__ {scalar_t__ blockfreespace; int isbufferfull; int getsectsize; TYPE_1__* block; } ;


 TYPE_2__* Cs2Area ;

block_struct * Cs2AllocateBlock(u8 * blocknum) {
  u32 i;

  for(i = 0; i < 200; i++)
  {
     if (Cs2Area->block[i].size == -1)
     {
        Cs2Area->blockfreespace--;

        if (Cs2Area->blockfreespace <= 0) Cs2Area->isbufferfull = 1;

        Cs2Area->block[i].size = Cs2Area->getsectsize;

        *blocknum = (u8)i;
        return (Cs2Area->block + i);
     }
  }

  Cs2Area->isbufferfull = 1;

  return ((void*)0);
}
