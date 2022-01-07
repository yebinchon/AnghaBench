
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shardIntervalArrayLength; int relationId; } ;
typedef int Oid ;
typedef TYPE_1__ DistTableCacheEntry ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 char* get_rel_name (int ) ;

__attribute__((used)) static void
ErrorIfNoShardsExist(DistTableCacheEntry *cacheEntry)
{
 int shardCount = cacheEntry->shardIntervalArrayLength;
 if (shardCount == 0)
 {
  Oid distributedTableId = cacheEntry->relationId;
  char *relationName = get_rel_name(distributedTableId);

  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("could not find any shards"),
      errdetail("No shards exist for distributed table \"%s\".",
          relationName),
      errhint("Run master_create_worker_shards to create shards "
        "and try again.")));
 }
}
