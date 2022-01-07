
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int workerPort; int workerName; } ;
typedef TYPE_1__ WorkerNode ;
struct TYPE_6__ {int master_query_host_port; int * master_query_host_name; } ;
typedef TYPE_2__ CitusDistStat ;


 int Assert (int) ;
 scalar_t__ IsCoordinator () ;
 int PostPortNumber ;
 TYPE_1__* PrimaryNodeForGroup (int,int*) ;
 int coordinator_host_name ;
 void* cstring_to_text (int ) ;

__attribute__((used)) static void
ReplaceInitiatorNodeIdentifier(int initiator_node_identifier,
          CitusDistStat *citusDistStat)
{
 WorkerNode *initiatorWorkerNode = ((void*)0);
 if (initiator_node_identifier > 0)
 {
  bool nodeExists = 0;

  initiatorWorkerNode = PrimaryNodeForGroup(initiator_node_identifier, &nodeExists);


  Assert(nodeExists);
  citusDistStat->master_query_host_name =
   cstring_to_text(initiatorWorkerNode->workerName);
  citusDistStat->master_query_host_port = initiatorWorkerNode->workerPort;
 }
 else if (initiator_node_identifier == 0 && IsCoordinator())
 {
  citusDistStat->master_query_host_name = cstring_to_text(coordinator_host_name);
  citusDistStat->master_query_host_port = PostPortNumber;
 }
 else if (initiator_node_identifier == 0)
 {
  citusDistStat->master_query_host_name = cstring_to_text(coordinator_host_name);
  citusDistStat->master_query_host_port = 0;
 }
 else
 {
  citusDistStat->master_query_host_name = ((void*)0);
  citusDistStat->master_query_host_port = 0;
 }
}
