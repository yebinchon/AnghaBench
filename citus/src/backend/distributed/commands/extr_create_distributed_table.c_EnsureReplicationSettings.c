
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 char REPLICATION_MODEL_STREAMING ;
 int ShardReplicationFactor ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,char*) ;
 int errmsg (char*,char*) ;

void
EnsureReplicationSettings(Oid relationId, char replicationModel)
{
 char *msgSuffix = "the streaming replication model";
 char *extraHint = " or setting \"citus.replication_model\" to \"statement\"";

 if (relationId != InvalidOid)
 {
  msgSuffix = "tables which use the streaming replication model";
  extraHint = "";
 }

 if (replicationModel == REPLICATION_MODEL_STREAMING && ShardReplicationFactor != 1)
 {
  ereport(ERROR, (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("replication factors above one are incompatible with %s",
          msgSuffix),
      errhint("Try again after reducing \"citus.shard_replication_"
        "factor\" to one%s.", extraHint)));
 }
}
