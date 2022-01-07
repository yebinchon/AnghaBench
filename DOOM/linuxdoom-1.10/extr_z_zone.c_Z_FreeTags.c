
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; int user; struct TYPE_3__* next; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {TYPE_1__ blocklist; } ;


 int Z_Free (int *) ;
 TYPE_2__* mainzone ;

void
Z_FreeTags
( int lowtag,
  int hightag )
{
    memblock_t* block;
    memblock_t* next;

    for (block = mainzone->blocklist.next ;
  block != &mainzone->blocklist ;
  block = next)
    {

 next = block->next;


 if (!block->user)
     continue;

 if (block->tag >= lowtag && block->tag <= hightag)
     Z_Free ( (byte *)block+sizeof(memblock_t));
    }
}
