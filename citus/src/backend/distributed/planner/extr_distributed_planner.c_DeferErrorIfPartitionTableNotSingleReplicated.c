
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int Oid ;
typedef int DeferredErrorMessage ;


 int * DeferredError (int ,char*,int *,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int PartitionParentOid (int ) ;
 scalar_t__ PartitionTableNoLock (int ) ;
 int SingleReplicatedTable (int ) ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 char* get_rel_name (int ) ;
 TYPE_1__* makeStringInfo () ;

__attribute__((used)) static DeferredErrorMessage *
DeferErrorIfPartitionTableNotSingleReplicated(Oid relationId)
{
 if (PartitionTableNoLock(relationId) && !SingleReplicatedTable(relationId))
 {
  Oid parentOid = PartitionParentOid(relationId);
  char *parentRelationTest = get_rel_name(parentOid);
  StringInfo errorHint = makeStringInfo();

  appendStringInfo(errorHint, "Run the query on the parent table "
         "\"%s\" instead.", parentRelationTest);

  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "modifications on partitions when replication "
        "factor is greater than 1 is not supported",
        ((void*)0), errorHint->data);
 }

 return ((void*)0);
}
