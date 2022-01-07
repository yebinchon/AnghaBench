
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int node; int * key; } ;
struct TYPE_7__ {size_t handle; } ;
struct TYPE_6__ {size_t size; int freeList; TYPE_3__* handles; TYPE_2__* nodes; } ;
typedef TYPE_1__ PriorityQHeap ;
typedef TYPE_2__ PQnode ;
typedef int * PQkey ;
typedef TYPE_3__ PQhandleElem ;
typedef size_t PQhandle ;


 int FloatDown (TYPE_1__*,int) ;

PQkey pqHeapExtractMin( PriorityQHeap *pq )
{
 PQnode *n = pq->nodes;
 PQhandleElem *h = pq->handles;
 PQhandle hMin = n[1].handle;
 PQkey min = h[hMin].key;

 if( pq->size > 0 ) {
  n[1].handle = n[pq->size].handle;
  h[n[1].handle].node = 1;

  h[hMin].key = ((void*)0);
  h[hMin].node = pq->freeList;
  pq->freeList = hMin;

  if( -- pq->size > 0 ) {
   FloatDown( pq, 1 );
  }
 }
 return min;
}
