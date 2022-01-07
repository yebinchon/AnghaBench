
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {float intercept; struct TYPE_6__* prev; struct TYPE_6__* next; int xyz; } ;
typedef TYPE_1__ edgePoint_t ;
struct TYPE_7__ {TYPE_1__ chain; int dir; int origin; } ;
typedef TYPE_2__ edgeLine_t ;


 float DotProduct (int ,int ) ;
 float LINE_POSITION_EPSILON ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

void InsertPointOnEdge( vec3_t v, edgeLine_t *e ) {
 vec3_t delta;
 float d;
 edgePoint_t *p, *scan;

 VectorSubtract( v, e->origin, delta );
 d = DotProduct( delta, e->dir );

 p = malloc( sizeof(edgePoint_t) );
 p->intercept = d;
 VectorCopy( v, p->xyz );

 if ( e->chain.next == &e->chain ) {
  e->chain.next = e->chain.prev = p;
  p->next = p->prev = &e->chain;
  return;
 }

 scan = e->chain.next;
 for ( ; scan != &e->chain ; scan = scan->next ) {
  d = p->intercept - scan->intercept;
  if ( d > -LINE_POSITION_EPSILON && d < LINE_POSITION_EPSILON ) {
   free( p );
   return;
  }

  if ( p->intercept < scan->intercept ) {

   p->prev = scan->prev;
   p->next = scan;
   scan->prev->next = p;
   scan->prev = p;
   return;
  }
 }


 p->prev = scan->prev;
 p->next = scan;
 scan->prev->next = p;
 scan->prev = p;
}
