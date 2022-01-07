
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; void** user; struct TYPE_3__* prev; struct TYPE_3__* next; scalar_t__ size; scalar_t__ tag; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {TYPE_1__* rover; } ;


 int I_Error (char*) ;
 scalar_t__ ZONEID ;
 TYPE_2__* mainzone ;

void Z_Free (void* ptr)
{
    memblock_t* block;
    memblock_t* other;

    block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));

    if (block->id != ZONEID)
 I_Error ("Z_Free: freed a pointer without ZONEID");

    if (block->user > (void **)0x100)
    {




 *block->user = 0;
    }


    block->user = ((void*)0);
    block->tag = 0;
    block->id = 0;

    other = block->prev;

    if (!other->user)
    {

 other->size += block->size;
 other->next = block->next;
 other->next->prev = other;

 if (block == mainzone->rover)
     mainzone->rover = other;

 block = other;
    }

    other = block->next;
    if (!other->user)
    {

 block->size += other->size;
 block->next = other->next;
 block->next->prev = block;

 if (other == mainzone->rover)
     mainzone->rover = block;
    }
}
