
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int node; int * key; } ;
struct TYPE_8__ {size_t handle; } ;
struct TYPE_7__ {int max; size_t size; int freeList; TYPE_3__* handles; TYPE_2__* nodes; } ;
typedef TYPE_1__ PriorityQHeap ;
typedef TYPE_2__ PQnode ;
typedef TYPE_3__ PQhandleElem ;
typedef int PQhandle ;


 int FloatDown (TYPE_1__*,int) ;
 int FloatUp (TYPE_1__*,int) ;
 scalar_t__ LEQ (int *,int *) ;
 int assert (int) ;

void pqHeapDelete( PriorityQHeap *pq, PQhandle hCurr )
{
 PQnode *n = pq->nodes;
 PQhandleElem *h = pq->handles;
 int curr;

 assert( hCurr >= 1 && hCurr <= pq->max && h[hCurr].key != ((void*)0) );

 curr = h[hCurr].node;
 n[curr].handle = n[pq->size].handle;
 h[n[curr].handle].node = curr;

 if( curr <= -- pq->size ) {
  if( curr <= 1 || LEQ( h[n[curr>>1].handle].key, h[n[curr].handle].key )) {
   FloatDown( pq, curr );
  } else {
   FloatUp( pq, curr );
  }
 }
 h[hCurr].key = ((void*)0);
 h[hCurr].node = pq->freeList;
 pq->freeList = hCurr;
}
