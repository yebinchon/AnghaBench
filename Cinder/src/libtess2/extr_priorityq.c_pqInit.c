
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int max; int ** order; int heap; int initialized; int * keys; } ;
struct TYPE_5__ {int userData; scalar_t__ (* memalloc ) (int ,size_t) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ PriorityQ ;
typedef int PQkey ;


 scalar_t__ GT (int ,int ) ;
 int LEQ (int ,int ) ;
 scalar_t__ LT (int ,int ) ;
 int Swap (int **,int **) ;
 int TRUE ;
 int assert (int ) ;
 int pqHeapInit (int ) ;
 scalar_t__ stub1 (int ,size_t) ;

int pqInit( TESSalloc* alloc, PriorityQ *pq )
{
 PQkey **p, **r, **i, **j, *piv;
 struct { PQkey **p, **r; } Stack[50], *top = Stack;
 unsigned int seed = 2016473283;
 pq->order = (PQkey **)alloc->memalloc( alloc->userData,
            (size_t)((pq->size+1) * sizeof(pq->order[0])) );




 if (pq->order == ((void*)0)) return 0;

 p = pq->order;
 r = p + pq->size - 1;
 for( piv = pq->keys, i = p; i <= r; ++piv, ++i ) {
  *i = piv;
 }




 top->p = p; top->r = r; ++top;
 while( --top >= Stack ) {
  p = top->p;
  r = top->r;
  while( r > p + 10 ) {
   seed = seed * 1539415821 + 1;
   i = p + seed % (r - p + 1);
   piv = *i;
   *i = *p;
   *p = piv;
   i = p - 1;
   j = r + 1;
   do {
    do { ++i; } while( GT( **i, *piv ));
    do { --j; } while( LT( **j, *piv ));
    Swap( i, j );
   } while( i < j );
   Swap( i, j );
   if( i - p < r - j ) {
    top->p = j+1; top->r = r; ++top;
    r = i-1;
   } else {
    top->p = p; top->r = i-1; ++top;
    p = j+1;
   }
  }

  for( i = p+1; i <= r; ++i ) {
   piv = *i;
   for( j = i; j > p && LT( **(j-1), *piv ); --j ) {
    *j = *(j-1);
   }
   *j = piv;
  }
 }
 pq->max = pq->size;
 pq->initialized = TRUE;
 pqHeapInit( pq->heap );


 p = pq->order;
 r = p + pq->size - 1;
 for( i = p; i < r; ++i ) {
  assert( LEQ( **(i+1), **i ));
 }


 return 1;
}
