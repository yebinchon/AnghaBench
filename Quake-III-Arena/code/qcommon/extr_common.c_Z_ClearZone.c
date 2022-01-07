
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; scalar_t__ size; scalar_t__ id; TYPE_3__* prev; TYPE_3__* next; } ;
struct TYPE_6__ {int size; TYPE_1__ blocklist; scalar_t__ used; TYPE_3__* rover; } ;
typedef TYPE_2__ memzone_t ;
struct TYPE_7__ {int size; int id; scalar_t__ tag; TYPE_1__* next; TYPE_1__* prev; } ;
typedef TYPE_3__ memblock_t ;
typedef int byte ;


 int ZONEID ;

void Z_ClearZone( memzone_t *zone, int size ) {
 memblock_t *block;



 zone->blocklist.next = zone->blocklist.prev = block =
  (memblock_t *)( (byte *)zone + sizeof(memzone_t) );
 zone->blocklist.tag = 1;
 zone->blocklist.id = 0;
 zone->blocklist.size = 0;
 zone->rover = block;
 zone->size = size;
 zone->used = 0;

 block->prev = block->next = &zone->blocklist;
 block->tag = 0;
 block->id = ZONEID;
 block->size = size - sizeof(memzone_t);
}
