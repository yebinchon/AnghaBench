
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef scalar_t__ Oid ;


 scalar_t__ ColocatedTableId (int) ;
 int ColocationId (int ,int ,scalar_t__) ;
 int DistColocationRelationId () ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int EnsureFunctionCanBeColocatedWithTable (scalar_t__,scalar_t__,scalar_t__) ;
 int INVALID_COLOCATION_ID ;
 scalar_t__ InvalidOid ;
 int NAMEDATALEN ;
 int NoLock ;
 scalar_t__ REPLICATION_MODEL_COORDINATOR ;
 scalar_t__ ReplicationModel ;
 scalar_t__ ResolveRelationId (int ,int) ;
 int ShardCount ;
 int ShardReplicationFactor ;
 int ShareLock ;
 int TableColocationId (scalar_t__) ;
 int cstring_to_text (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 char* get_func_name (scalar_t__) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ pg_strncasecmp (char*,char*,int ) ;

__attribute__((used)) static int
GetFunctionColocationId(Oid functionOid, char *colocateWithTableName,
      Oid distributionArgumentOid)
{
 int colocationId = INVALID_COLOCATION_ID;
 Relation pgDistColocation = heap_open(DistColocationRelationId(), ShareLock);

 if (pg_strncasecmp(colocateWithTableName, "default", NAMEDATALEN) == 0)
 {
  Oid colocatedTableId = InvalidOid;


  colocationId = ColocationId(ShardCount, ShardReplicationFactor,
         distributionArgumentOid);

  if (colocationId == INVALID_COLOCATION_ID)
  {
   char *functionName = get_func_name(functionOid);

   ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("cannot distribute the function \"%s\" since there "
           "is no table to colocate with", functionName),
       errhint("Provide a distributed table via \"colocate_with\" "
         "option to create_distributed_function()")));
  }

  colocatedTableId = ColocatedTableId(colocationId);
  if (colocatedTableId != InvalidOid)
  {
   EnsureFunctionCanBeColocatedWithTable(functionOid, distributionArgumentOid,
              colocatedTableId);
  }
  else if (ReplicationModel == REPLICATION_MODEL_COORDINATOR)
  {

   ereport(ERROR, (errmsg("cannot create a function with a distribution "
           "argument when citus.replication_model is "
           "'statement'"),
       errhint("Set citus.replication_model to 'streaming' "
         "before creating distributed tables")));
  }
 }
 else
 {
  Oid sourceRelationId =
   ResolveRelationId(cstring_to_text(colocateWithTableName), 0);

  EnsureFunctionCanBeColocatedWithTable(functionOid, distributionArgumentOid,
             sourceRelationId);

  colocationId = TableColocationId(sourceRelationId);
 }


 heap_close(pgDistColocation, NoLock);

 return colocationId;
}
