
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {size_t node; size_t handle; int key; } ;
struct TYPE_11__ {int size; int max; size_t freeList; scalar_t__ initialized; TYPE_3__* handles; TYPE_3__* nodes; } ;
struct TYPE_10__ {int userData; scalar_t__ (* memrealloc ) (int ,TYPE_3__*,size_t) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ PriorityQHeap ;
typedef TYPE_3__ PQnode ;
typedef int PQkey ;
typedef TYPE_3__ PQhandleElem ;
typedef size_t PQhandle ;


 int FloatUp (TYPE_2__*,int) ;
 size_t INV_HANDLE ;
 int assert (int) ;
 scalar_t__ stub1 (int ,TYPE_3__*,size_t) ;
 scalar_t__ stub2 (int ,TYPE_3__*,size_t) ;

PQhandle pqHeapInsert( TESSalloc* alloc, PriorityQHeap *pq, PQkey keyNew )
{
 int curr;
 PQhandle free;

 curr = ++ pq->size;
 if( (curr*2) > pq->max ) {
  if (!alloc->memrealloc)
  {
   return INV_HANDLE;
  }
  else
  {
   PQnode *saveNodes= pq->nodes;
   PQhandleElem *saveHandles= pq->handles;


   pq->max <<= 1;
   pq->nodes = (PQnode *)alloc->memrealloc( alloc->userData, pq->nodes,
    (size_t)((pq->max + 1) * sizeof( pq->nodes[0] )));
   if (pq->nodes == ((void*)0)) {
    pq->nodes = saveNodes;
    return INV_HANDLE;
   }
   pq->handles = (PQhandleElem *)alloc->memrealloc( alloc->userData, pq->handles,
    (size_t) ((pq->max + 1) * sizeof( pq->handles[0] )));
   if (pq->handles == ((void*)0)) {
    pq->handles = saveHandles;
    return INV_HANDLE;
   }
  }
 }

 if( pq->freeList == 0 ) {
  free = curr;
 } else {
  free = pq->freeList;
  pq->freeList = pq->handles[free].node;
 }

 pq->nodes[curr].handle = free;
 pq->handles[free].node = curr;
 pq->handles[free].key = keyNew;

 if( pq->initialized ) {
  FloatUp( pq, curr );
 }
 assert(free != INV_HANDLE);
 return free;
}
