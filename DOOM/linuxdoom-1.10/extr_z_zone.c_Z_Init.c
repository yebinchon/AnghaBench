
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; void* user; TYPE_3__* prev; TYPE_3__* next; } ;
struct TYPE_6__ {int size; TYPE_1__ blocklist; TYPE_3__* rover; } ;
typedef TYPE_2__ memzone_t ;
struct TYPE_7__ {int size; int * user; TYPE_1__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ memblock_t ;
typedef int byte ;


 scalar_t__ I_ZoneBase (int*) ;
 int PU_STATIC ;
 TYPE_2__* mainzone ;

void Z_Init (void)
{
    memblock_t* block;
    int size;

    mainzone = (memzone_t *)I_ZoneBase (&size);
    mainzone->size = size;


    mainzone->blocklist.next =
 mainzone->blocklist.prev =
 block = (memblock_t *)( (byte *)mainzone + sizeof(memzone_t) );

    mainzone->blocklist.user = (void *)mainzone;
    mainzone->blocklist.tag = PU_STATIC;
    mainzone->rover = block;

    block->prev = block->next = &mainzone->blocklist;


    block->user = ((void*)0);

    block->size = mainzone->size - sizeof(memzone_t);
}
