
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int node; int key; } ;
struct TYPE_6__ {size_t handle; } ;
struct TYPE_5__ {TYPE_3__* handles; TYPE_2__* nodes; } ;
typedef TYPE_1__ PriorityQHeap ;
typedef TYPE_2__ PQnode ;
typedef TYPE_3__ PQhandleElem ;
typedef size_t PQhandle ;


 scalar_t__ LEQ (int ,int ) ;

__attribute__((used)) static void FloatUp( PriorityQHeap *pq, int curr )
{
 PQnode *n = pq->nodes;
 PQhandleElem *h = pq->handles;
 PQhandle hCurr, hParent;
 int parent;

 hCurr = n[curr].handle;
 for( ;; ) {
  parent = curr >> 1;
  hParent = n[parent].handle;
  if( parent == 0 || LEQ( h[hParent].key, h[hCurr].key )) {
   n[curr].handle = hCurr;
   h[hCurr].node = curr;
   break;
  }
  n[curr].handle = hParent;
  h[hParent].node = curr;
  curr = parent;
 }
}
