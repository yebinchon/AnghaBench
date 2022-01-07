
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int max; int * keys; int heap; scalar_t__ initialized; } ;
struct TYPE_6__ {int userData; scalar_t__ (* memrealloc ) (int ,int *,size_t) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ PriorityQ ;
typedef int PQkey ;
typedef int PQhandle ;


 int INV_HANDLE ;
 int assert (int) ;
 int pqHeapInsert (TYPE_1__*,int ,int ) ;
 scalar_t__ stub1 (int ,int *,size_t) ;

PQhandle pqInsert( TESSalloc* alloc, PriorityQ *pq, PQkey keyNew )
{
 int curr;

 if( pq->initialized ) {
  return pqHeapInsert( alloc, pq->heap, keyNew );
 }
 curr = pq->size;
 if( ++ pq->size >= pq->max ) {
  if (!alloc->memrealloc)
  {
   return INV_HANDLE;
  }
  else
  {
   PQkey *saveKey= pq->keys;

   pq->max <<= 1;
   pq->keys = (PQkey *)alloc->memrealloc( alloc->userData, pq->keys,
    (size_t)(pq->max * sizeof( pq->keys[0] )));
   if (pq->keys == ((void*)0)) {
    pq->keys = saveKey;
    return INV_HANDLE;
   }
  }
 }
 assert(curr != INV_HANDLE);
 pq->keys[curr] = keyNew;


 return -(curr+1);
}
