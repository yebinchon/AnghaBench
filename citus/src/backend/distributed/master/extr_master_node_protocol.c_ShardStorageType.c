
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CStoreTable (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 char RELKIND_FOREIGN_TABLE ;
 scalar_t__ RegularTable (int ) ;
 char SHARD_STORAGE_COLUMNAR ;
 char SHARD_STORAGE_FOREIGN ;
 char SHARD_STORAGE_TABLE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;
 char get_rel_relkind (int ) ;

char
ShardStorageType(Oid relationId)
{
 char shardStorageType = 0;

 char relationType = get_rel_relkind(relationId);
 if (RegularTable(relationId))
 {
  shardStorageType = SHARD_STORAGE_TABLE;
 }
 else if (relationType == RELKIND_FOREIGN_TABLE)
 {
  bool cstoreTable = CStoreTable(relationId);
  if (cstoreTable)
  {
   shardStorageType = SHARD_STORAGE_COLUMNAR;
  }
  else
  {
   shardStorageType = SHARD_STORAGE_FOREIGN;
  }
 }
 else
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("unexpected relation type: %c", relationType)));
 }

 return shardStorageType;
}
