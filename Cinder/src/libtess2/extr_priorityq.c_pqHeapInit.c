
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int initialized; } ;
typedef TYPE_1__ PriorityQHeap ;


 int FloatDown (TYPE_1__*,int) ;
 int TRUE ;

void pqHeapInit( PriorityQHeap *pq )
{
 int i;



 for( i = pq->size; i >= 1; --i ) {
  FloatDown( pq, i );
 }
 pq->initialized = TRUE;
}
