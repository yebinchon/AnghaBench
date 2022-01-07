
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int replace ;
struct TYPE_11__ {int workerPort; int workerName; int nodeId; } ;
typedef TYPE_1__ WorkerNode ;
typedef int TupleDesc ;
struct TYPE_12__ {int t_self; } ;
typedef int Relation ;
typedef TYPE_2__* HeapTuple ;
typedef int Datum ;




 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int CitusInvalidateRelcacheByRelid (int ) ;
 int CommandCounterIncrement () ;
 int DatumGetBool (int ) ;
 int DistNodeRelationId () ;
 int ERROR ;
 TYPE_2__* GetNodeTuple (int ,int ) ;
 int Natts_pg_dist_node ;
 int NoLock ;
 char* NodeStateUpdateCommand (int ,int ) ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int SendCommandToWorkers (int ,char*) ;
 char* ShouldHaveShardsUpdateCommand (int ,int ) ;
 TYPE_1__* TupleToWorkerNode (int ,TYPE_2__*) ;
 int WORKERS_WITH_METADATA ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ,int ) ;
 int heap_close (int ,int ) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int *,int*,int*) ;
 int heap_open (int ,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static WorkerNode *
SetWorkerColumn(WorkerNode *workerNode, int columnIndex, Datum value)
{
 Relation pgDistNode = heap_open(DistNodeRelationId(), RowExclusiveLock);
 TupleDesc tupleDescriptor = RelationGetDescr(pgDistNode);
 HeapTuple heapTuple = GetNodeTuple(workerNode->workerName, workerNode->workerPort);
 WorkerNode *newWorkerNode = ((void*)0);

 Datum values[Natts_pg_dist_node];
 bool isnull[Natts_pg_dist_node];
 bool replace[Natts_pg_dist_node];
 char *metadataSyncCommand = ((void*)0);


 switch (columnIndex)
 {
  case 129:
  {
   metadataSyncCommand = NodeStateUpdateCommand(workerNode->nodeId,
               DatumGetBool(value));
   break;
  }

  case 128:
  {
   metadataSyncCommand = ShouldHaveShardsUpdateCommand(workerNode->nodeId,
                DatumGetBool(value));
   break;
  }

  default:
  {
   ereport(ERROR, (errmsg("could not find valid entry for node \"%s:%d\"",
           workerNode->workerName, workerNode->workerPort)));
  }
 }

 if (heapTuple == ((void*)0))
 {
  ereport(ERROR, (errmsg("could not find valid entry for node \"%s:%d\"",
          workerNode->workerName, workerNode->workerPort)));
 }

 memset(replace, 0, sizeof(replace));
 values[columnIndex - 1] = value;
 isnull[columnIndex - 1] = 0;
 replace[columnIndex - 1] = 1;

 heapTuple = heap_modify_tuple(heapTuple, tupleDescriptor, values, isnull, replace);

 CatalogTupleUpdate(pgDistNode, &heapTuple->t_self, heapTuple);

 CitusInvalidateRelcacheByRelid(DistNodeRelationId());
 CommandCounterIncrement();

 newWorkerNode = TupleToWorkerNode(tupleDescriptor, heapTuple);

 heap_close(pgDistNode, NoLock);


 SendCommandToWorkers(WORKERS_WITH_METADATA, metadataSyncCommand);
 return newWorkerNode;
}
