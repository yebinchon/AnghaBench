
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_12__ {char* schemaname; } ;
struct TYPE_11__ {TYPE_4__* relation; } ;
struct TYPE_10__ {char* nodeName; int nodePort; } ;
typedef int Oid ;
typedef TYPE_1__ NodeAddress ;
typedef TYPE_2__ CopyStmt ;


 int ClaimConnectionExclusively (int *) ;
 int CopyToNewShards (TYPE_2__*,char*,int ) ;
 char DISTRIBUTE_BY_APPEND ;
 int ERROR ;
 int FOR_DML ;
 int * GetNodeConnection (int ,char*,int ) ;
 int InvalidOid ;
 int MarkRemoteTransactionCritical (int *) ;
 TYPE_1__* MasterNodeAddress (TYPE_2__*) ;
 char MasterPartitionMethod (TYPE_4__*) ;
 int NoLock ;
 int RangeVarGetRelid (TYPE_4__*,int ,int) ;
 int RemoteTransactionBeginIfNecessary (int *) ;
 int RemoveMasterOptions (TYPE_2__*) ;
 int UnclaimConnection (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int * masterConnection ;

__attribute__((used)) static void
CopyFromWorkerNode(CopyStmt *copyStatement, char *completionTag)
{
 NodeAddress *masterNodeAddress = MasterNodeAddress(copyStatement);
 char *nodeName = masterNodeAddress->nodeName;
 int32 nodePort = masterNodeAddress->nodePort;
 Oid relationId = InvalidOid;
 char partitionMethod = 0;
 char *schemaName = ((void*)0);
 uint32 connectionFlags = FOR_DML;

 masterConnection = GetNodeConnection(connectionFlags, nodeName, nodePort);
 MarkRemoteTransactionCritical(masterConnection);
 ClaimConnectionExclusively(masterConnection);

 RemoteTransactionBeginIfNecessary(masterConnection);


 schemaName = copyStatement->relation->schemaname;
 copyStatement->relation->schemaname = ((void*)0);

 relationId = RangeVarGetRelid(copyStatement->relation, NoLock, 0);


 copyStatement->relation->schemaname = schemaName;
 partitionMethod = MasterPartitionMethod(copyStatement->relation);
 if (partitionMethod != DISTRIBUTE_BY_APPEND)
 {
  ereport(ERROR, (errmsg("copy from worker nodes is only supported "
          "for append-partitioned tables")));
 }





 RemoveMasterOptions(copyStatement);

 CopyToNewShards(copyStatement, completionTag, relationId);

 UnclaimConnection(masterConnection);
 masterConnection = ((void*)0);
}
