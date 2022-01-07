
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
typedef TYPE_2__ block_struct ;
struct TYPE_5__ {int HIRQ; } ;
struct TYPE_7__ {TYPE_1__ reg; scalar_t__ isbufferfull; int blockfreespace; } ;


 int CDB_HIRQ_BFUL ;
 TYPE_4__* Cs2Area ;

void Cs2FreeBlock(block_struct * blk) {
  if (blk == ((void*)0)) return;
  blk->size = -1;
  Cs2Area->blockfreespace++;
  Cs2Area->isbufferfull = 0;
  Cs2Area->reg.HIRQ &= ~CDB_HIRQ_BFUL;
}
