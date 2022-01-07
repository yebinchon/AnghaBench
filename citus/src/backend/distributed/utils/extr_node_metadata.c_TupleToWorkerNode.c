
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isNullArray ;
struct TYPE_3__ {int nodeCluster; void* shouldHaveShards; int nodeRole; void* isActive; void* metadataSynced; void* hasMetadata; int workerRack; int workerName; int groupId; void* workerPort; void* nodeId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int TupleDesc ;
typedef int * Name ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_dist_node_groupid ;
 int Anum_pg_dist_node_hasmetadata ;
 int Anum_pg_dist_node_isactive ;
 int Anum_pg_dist_node_metadatasynced ;
 int Anum_pg_dist_node_nodecluster ;
 int Anum_pg_dist_node_nodeid ;
 int Anum_pg_dist_node_nodename ;
 int Anum_pg_dist_node_nodeport ;
 int Anum_pg_dist_node_noderack ;
 int Anum_pg_dist_node_noderole ;
 int Anum_pg_dist_node_shouldhaveshards ;
 int Assert (int) ;
 void* DatumGetBool (int ) ;
 char* DatumGetCString (int ) ;
 int DatumGetInt32 (int ) ;
 int * DatumGetName (int ) ;
 int DatumGetObjectId (int ) ;
 void* DatumGetUInt32 (int ) ;
 int HeapTupleHasNulls (int ) ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 int Natts_pg_dist_node ;
 char* TextDatumGetCString (char*) ;
 int WORKER_LENGTH ;
 int heap_deform_tuple (int ,int ,int *,int*) ;
 int memset (int*,int,int) ;
 scalar_t__ palloc0 (int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static WorkerNode *
TupleToWorkerNode(TupleDesc tupleDescriptor, HeapTuple heapTuple)
{
 WorkerNode *workerNode = ((void*)0);
 Datum datumArray[Natts_pg_dist_node];
 bool isNullArray[Natts_pg_dist_node];
 char *nodeName = ((void*)0);
 char *nodeRack = ((void*)0);

 Assert(!HeapTupleHasNulls(heapTuple));






 memset(isNullArray, 1, sizeof(isNullArray));





 heap_deform_tuple(heapTuple, tupleDescriptor, datumArray, isNullArray);

 nodeName = DatumGetCString(datumArray[Anum_pg_dist_node_nodename - 1]);
 nodeRack = DatumGetCString(datumArray[Anum_pg_dist_node_noderack - 1]);

 workerNode = (WorkerNode *) palloc0(sizeof(WorkerNode));
 workerNode->nodeId = DatumGetUInt32(datumArray[Anum_pg_dist_node_nodeid - 1]);
 workerNode->workerPort = DatumGetUInt32(datumArray[Anum_pg_dist_node_nodeport - 1]);
 workerNode->groupId = DatumGetInt32(datumArray[Anum_pg_dist_node_groupid - 1]);
 strlcpy(workerNode->workerName, TextDatumGetCString(nodeName), WORKER_LENGTH);
 strlcpy(workerNode->workerRack, TextDatumGetCString(nodeRack), WORKER_LENGTH);
 workerNode->hasMetadata = DatumGetBool(datumArray[Anum_pg_dist_node_hasmetadata - 1]);
 workerNode->metadataSynced =
  DatumGetBool(datumArray[Anum_pg_dist_node_metadatasynced - 1]);
 workerNode->isActive = DatumGetBool(datumArray[Anum_pg_dist_node_isactive - 1]);
 workerNode->nodeRole = DatumGetObjectId(datumArray[Anum_pg_dist_node_noderole - 1]);
 workerNode->shouldHaveShards = DatumGetBool(
  datumArray[Anum_pg_dist_node_shouldhaveshards -
       1]);






 if (!isNullArray[Anum_pg_dist_node_nodecluster - 1])
 {
  Name nodeClusterName =
   DatumGetName(datumArray[Anum_pg_dist_node_nodecluster - 1]);
  char *nodeClusterString = NameStr(*nodeClusterName);
  strlcpy(workerNode->nodeCluster, nodeClusterString, NAMEDATALEN);
 }

 return workerNode;
}
