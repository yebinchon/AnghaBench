
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vartype; } ;
typedef TYPE_1__ Var ;
struct TYPE_6__ {char partitionMethod; char replicationModel; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__ DistTableCacheEntry ;
typedef scalar_t__ CoercionPathType ;


 int COERCION_EXPLICIT ;
 scalar_t__ COERCION_PATH_NONE ;
 char DISTRIBUTE_BY_HASH ;
 TYPE_1__* DistPartitionKey (scalar_t__) ;
 TYPE_2__* DistributedTableCacheEntry (scalar_t__) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 char REPLICATION_MODEL_STREAMING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,char*,char*) ;
 scalar_t__ find_coercion_pathway (scalar_t__,scalar_t__,int ,scalar_t__*) ;
 char* get_func_name (scalar_t__) ;
 char* get_rel_name (scalar_t__) ;

__attribute__((used)) static void
EnsureFunctionCanBeColocatedWithTable(Oid functionOid, Oid distributionColumnType,
           Oid sourceRelationId)
{
 DistTableCacheEntry *sourceTableEntry = DistributedTableCacheEntry(sourceRelationId);
 char sourceDistributionMethod = sourceTableEntry->partitionMethod;
 char sourceReplicationModel = sourceTableEntry->replicationModel;
 Var *sourceDistributionColumn = DistPartitionKey(sourceRelationId);
 Oid sourceDistributionColumnType = InvalidOid;

 if (sourceDistributionMethod != DISTRIBUTE_BY_HASH)
 {
  char *functionName = get_func_name(functionOid);
  char *sourceRelationName = get_rel_name(sourceRelationId);

  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot colocate function \"%s\" and table \"%s\" because "
          "colocate_with option is only supported for hash "
          "distributed tables.", functionName,
          sourceRelationName)));
 }

 if (sourceReplicationModel != REPLICATION_MODEL_STREAMING)
 {
  char *functionName = get_func_name(functionOid);
  char *sourceRelationName = get_rel_name(sourceRelationId);

  ereport(ERROR, (errmsg("cannot colocate function \"%s\" and table \"%s\"",
          functionName, sourceRelationName),
      errdetail("Citus currently only supports colocating function "
          "with distributed tables that are created using "
          "streaming replication model."),
      errhint("When distributing tables make sure that "
        "citus.replication_model = 'streaming'")));
 }





 sourceDistributionColumnType = sourceDistributionColumn->vartype;
 if (sourceDistributionColumnType != distributionColumnType)
 {
  Oid coercionFuncId = InvalidOid;
  CoercionPathType coercionType = COERCION_PATH_NONE;

  coercionType =
   find_coercion_pathway(distributionColumnType, sourceDistributionColumnType,
          COERCION_EXPLICIT, &coercionFuncId);


  if (coercionType == COERCION_PATH_NONE)
  {
   char *functionName = get_func_name(functionOid);
   char *sourceRelationName = get_rel_name(sourceRelationId);

   ereport(ERROR, (errmsg("cannot colocate function \"%s\" and table \"%s\" "
           "because distribution column types don't match and "
           "there is no coercion path", sourceRelationName,
           functionName)));
  }
 }
}
