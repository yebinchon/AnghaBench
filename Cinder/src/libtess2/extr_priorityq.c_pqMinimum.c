
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int heap; int ** order; } ;
typedef TYPE_1__ PriorityQ ;
typedef int PQkey ;


 scalar_t__ LEQ (int ,int ) ;
 int pqHeapIsEmpty (int ) ;
 int pqHeapMinimum (int ) ;

PQkey pqMinimum( PriorityQ *pq )
{
 PQkey sortMin, heapMin;

 if( pq->size == 0 ) {
  return pqHeapMinimum( pq->heap );
 }
 sortMin = *(pq->order[pq->size-1]);
 if( ! pqHeapIsEmpty( pq->heap )) {
  heapMin = pqHeapMinimum( pq->heap );
  if( LEQ( heapMin, sortMin )) {
   return heapMin;
  }
 }
 return sortMin;
}
