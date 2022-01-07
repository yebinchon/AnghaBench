
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int *** order; int heap; } ;
typedef TYPE_1__ PriorityQ ;
typedef int * PQkey ;


 scalar_t__ LEQ (int *,int *) ;
 int * pqHeapExtractMin (int ) ;
 int pqHeapIsEmpty (int ) ;
 int * pqHeapMinimum (int ) ;

PQkey pqExtractMin( PriorityQ *pq )
{
 PQkey sortMin, heapMin;

 if( pq->size == 0 ) {
  return pqHeapExtractMin( pq->heap );
 }
 sortMin = *(pq->order[pq->size-1]);
 if( ! pqHeapIsEmpty( pq->heap )) {
  heapMin = pqHeapMinimum( pq->heap );
  if( LEQ( heapMin, sortMin )) {
   return pqHeapExtractMin( pq->heap );
  }
 }
 do {
  -- pq->size;
 } while( pq->size > 0 && *(pq->order[pq->size-1]) == ((void*)0) );
 return sortMin;
}
