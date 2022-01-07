
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ parseMesh_t ;
struct TYPE_7__ {TYPE_1__* patches; TYPE_3__* brushes; } ;
typedef TYPE_2__ entity_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_9__ {TYPE_1__* patches; TYPE_3__* brushes; } ;


 TYPE_4__* entities ;

void MoveBrushesToWorld (entity_t *mapent) {
 bspbrush_t *b, *next;
 parseMesh_t *pm;


 for ( b = mapent->brushes ; b ; b = next ) {
  next = b->next;

  b->next = entities[0].brushes;
  entities[0].brushes = b;
 }
 mapent->brushes = ((void*)0);


 if ( mapent->patches ) {

  for ( pm = mapent->patches ; pm->next ; pm = pm->next ) {
  }

  pm->next = entities[0].patches;
  entities[0].patches = mapent->patches;

  mapent->patches = ((void*)0);
 }
}
