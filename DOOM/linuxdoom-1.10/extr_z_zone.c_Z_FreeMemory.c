
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; scalar_t__ size; int user; struct TYPE_3__* next; } ;
typedef TYPE_1__ memblock_t ;
struct TYPE_4__ {TYPE_1__ blocklist; } ;


 scalar_t__ PU_PURGELEVEL ;
 TYPE_2__* mainzone ;

int Z_FreeMemory (void)
{
    memblock_t* block;
    int free;

    free = 0;

    for (block = mainzone->blocklist.next ;
  block != &mainzone->blocklist;
  block = block->next)
    {
 if (!block->user || block->tag >= PU_PURGELEVEL)
     free += block->size;
    }
    return free;
}
