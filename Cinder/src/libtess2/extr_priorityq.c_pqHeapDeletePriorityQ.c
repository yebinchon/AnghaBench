
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* nodes; struct TYPE_9__* handles; } ;
struct TYPE_8__ {int userData; int (* memfree ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ PriorityQHeap ;


 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,TYPE_2__*) ;

void pqHeapDeletePriorityQ( TESSalloc* alloc, PriorityQHeap *pq )
{
 alloc->memfree( alloc->userData, pq->handles );
 alloc->memfree( alloc->userData, pq->nodes );
 alloc->memfree( alloc->userData, pq );
}
