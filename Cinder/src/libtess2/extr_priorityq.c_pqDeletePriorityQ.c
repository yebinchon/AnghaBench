
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* keys; struct TYPE_10__* order; int * heap; } ;
struct TYPE_9__ {int userData; int (* memfree ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ PriorityQ ;


 int assert (int ) ;
 int pqHeapDeletePriorityQ (TYPE_1__*,int *) ;
 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,TYPE_2__*) ;

void pqDeletePriorityQ( TESSalloc* alloc, PriorityQ *pq )
{
 assert(pq != ((void*)0));
 if (pq->heap != ((void*)0)) pqHeapDeletePriorityQ( alloc, pq->heap );
 if (pq->order != ((void*)0)) alloc->memfree( alloc->userData, pq->order );
 if (pq->keys != ((void*)0)) alloc->memfree( alloc->userData, pq->keys );
 alloc->memfree( alloc->userData, pq );
}
