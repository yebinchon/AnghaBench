
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int tag; int id; struct TYPE_3__* next; int * user; struct TYPE_3__* prev; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {TYPE_1__* rover; } ;


 int I_Error (char*,...) ;
 int MINFRAGMENT ;
 int PU_PURGELEVEL ;
 int ZONEID ;
 int Z_Free (int *) ;
 TYPE_2__* mainzone ;

void*
Z_Malloc
( int size,
  int tag,
  void* user )
{
    int extra;
    memblock_t* start;
    memblock_t* rover;
    memblock_t* newblock;
    memblock_t* base;

    size = (size + 3) & ~3;







    size += sizeof(memblock_t);



    base = mainzone->rover;

    if (!base->prev->user)
 base = base->prev;

    rover = base;
    start = base->prev;

    do
    {
 if (rover == start)
 {

     I_Error ("Z_Malloc: failed on allocation of %i bytes", size);
 }

 if (rover->user)
 {
     if (rover->tag < PU_PURGELEVEL)
     {


  base = rover = rover->next;
     }
     else
     {



  base = base->prev;
  Z_Free ((byte *)rover+sizeof(memblock_t));
  base = base->next;
  rover = base->next;
     }
 }
 else
     rover = rover->next;
    } while (base->user || base->size < size);



    extra = base->size - size;

    if (extra > MINFRAGMENT)
    {

 newblock = (memblock_t *) ((byte *)base + size );
 newblock->size = extra;


 newblock->user = ((void*)0);
 newblock->tag = 0;
 newblock->prev = base;
 newblock->next = base->next;
 newblock->next->prev = newblock;

 base->next = newblock;
 base->size = size;
    }

    if (user)
    {

 base->user = user;
 *(void **)user = (void *) ((byte *)base + sizeof(memblock_t));
    }
    else
    {
 if (tag >= PU_PURGELEVEL)
     I_Error ("Z_Malloc: an owner is required for purgable blocks");


 base->user = (void *)2;
    }
    base->tag = tag;


    mainzone->rover = base->next;

    base->id = ZONEID;

    return (void *) ((byte *)base + sizeof(memblock_t));
}
