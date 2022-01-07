
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shardId; int relationId; } ;
typedef TYPE_1__ ShardInterval ;
typedef int Oid ;


 int AppendShardIdToName (char**,int ) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 char* pstrdup (char*) ;
 char* quote_qualified_identifier (char*,char*) ;

char *
ConstructQualifiedShardName(ShardInterval *shardInterval)
{
 Oid schemaId = get_rel_namespace(shardInterval->relationId);
 char *schemaName = get_namespace_name(schemaId);
 char *tableName = get_rel_name(shardInterval->relationId);
 char *shardName = ((void*)0);

 shardName = pstrdup(tableName);
 AppendShardIdToName(&shardName, shardInterval->shardId);
 shardName = quote_qualified_identifier(schemaName, shardName);

 return shardName;
}
