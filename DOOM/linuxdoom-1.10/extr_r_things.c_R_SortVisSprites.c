
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scale; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ vissprite_t ;
typedef scalar_t__ fixed_t ;


 scalar_t__ MAXINT ;
 TYPE_1__* vissprite_p ;
 TYPE_1__* vissprites ;
 TYPE_1__ vsprsortedhead ;

void R_SortVisSprites (void)
{
    int i;
    int count;
    vissprite_t* ds;
    vissprite_t* best;
    vissprite_t unsorted;
    fixed_t bestscale;

    count = vissprite_p - vissprites;

    unsorted.next = unsorted.prev = &unsorted;

    if (!count)
 return;

    for (ds=vissprites ; ds<vissprite_p ; ds++)
    {
 ds->next = ds+1;
 ds->prev = ds-1;
    }

    vissprites[0].prev = &unsorted;
    unsorted.next = &vissprites[0];
    (vissprite_p-1)->next = &unsorted;
    unsorted.prev = vissprite_p-1;



    vsprsortedhead.next = vsprsortedhead.prev = &vsprsortedhead;
    for (i=0 ; i<count ; i++)
    {
 bestscale = MAXINT;
 for (ds=unsorted.next ; ds!= &unsorted ; ds=ds->next)
 {
     if (ds->scale < bestscale)
     {
  bestscale = ds->scale;
  best = ds;
     }
 }
 best->next->prev = best->prev;
 best->prev->next = best->next;
 best->next = &vsprsortedhead;
 best->prev = vsprsortedhead.prev;
 vsprsortedhead.prev->next = best;
 vsprsortedhead.prev = best;
    }
}
