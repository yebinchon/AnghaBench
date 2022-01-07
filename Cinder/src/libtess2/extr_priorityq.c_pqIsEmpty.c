
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int heap; } ;
typedef TYPE_1__ PriorityQ ;


 scalar_t__ pqHeapIsEmpty (int ) ;

int pqIsEmpty( PriorityQ *pq )
{
 return (pq->size == 0) && pqHeapIsEmpty( pq->heap );
}
