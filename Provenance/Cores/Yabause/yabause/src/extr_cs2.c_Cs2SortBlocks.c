
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** block; } ;
typedef TYPE_1__ partition_struct ;


 unsigned int MAX_BLOCKS ;

void Cs2SortBlocks(partition_struct * part) {
  unsigned int from, to;

  for (from = to = 0; from < MAX_BLOCKS; from++)
  {
     if (part->block[from] != ((void*)0))
     {
        if (to != from)
        {
           part->block[to] = part->block[from];
        }
        to++;
     }
  }

  for (; to < MAX_BLOCKS; to++) {
      part->block[to] = ((void*)0);
  }
}
