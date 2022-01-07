
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocatedSize; int edgeCount; int * edges; } ;
typedef TYPE_1__ WaitGraph ;
typedef int WaitEdge ;


 scalar_t__ repalloc (int *,int) ;

__attribute__((used)) static WaitEdge *
AllocWaitEdge(WaitGraph *waitGraph)
{

 if (waitGraph->allocatedSize == waitGraph->edgeCount)
 {
  waitGraph->allocatedSize *= 2;
  waitGraph->edges = (WaitEdge *)
         repalloc(waitGraph->edges, sizeof(WaitEdge) *
         waitGraph->allocatedSize);
 }

 return &waitGraph->edges[waitGraph->edgeCount++];
}
