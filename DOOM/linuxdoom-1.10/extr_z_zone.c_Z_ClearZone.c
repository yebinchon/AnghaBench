
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; void* user; TYPE_3__* prev; TYPE_3__* next; } ;
struct TYPE_6__ {scalar_t__ size; TYPE_1__ blocklist; TYPE_3__* rover; } ;
typedef TYPE_2__ memzone_t ;
struct TYPE_7__ {scalar_t__ size; int * user; TYPE_1__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ memblock_t ;
typedef int byte ;


 int PU_STATIC ;

void Z_ClearZone (memzone_t* zone)
{
    memblock_t* block;


    zone->blocklist.next =
 zone->blocklist.prev =
 block = (memblock_t *)( (byte *)zone + sizeof(memzone_t) );

    zone->blocklist.user = (void *)zone;
    zone->blocklist.tag = PU_STATIC;
    zone->rover = block;

    block->prev = block->next = &zone->blocklist;


    block->user = ((void*)0);

    block->size = zone->size - sizeof(memzone_t);
}
