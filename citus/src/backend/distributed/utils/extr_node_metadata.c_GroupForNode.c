
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int groupId; } ;
typedef TYPE_1__ WorkerNode ;


 int ERROR ;
 TYPE_1__* FindWorkerNode (char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int) ;

uint32
GroupForNode(char *nodeName, int nodePort)
{
 WorkerNode *workerNode = FindWorkerNode(nodeName, nodePort);

 if (workerNode == ((void*)0))
 {
  ereport(ERROR, (errmsg("node at \"%s:%u\" does not exist", nodeName, nodePort)));
 }

 return workerNode->groupId;
}
