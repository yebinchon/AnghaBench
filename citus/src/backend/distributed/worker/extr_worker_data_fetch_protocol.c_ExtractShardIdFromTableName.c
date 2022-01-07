
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int ERROR ;
 int INVALID_SHARD_ID ;
 int SHARD_NAME_SEPARATOR ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int pg_strtouint64 (char*,char**,int ) ;
 char* strrchr (char const*,int ) ;

uint64
ExtractShardIdFromTableName(const char *tableName, bool missingOk)
{
 uint64 shardId = 0;
 char *shardIdString = ((void*)0);
 char *shardIdStringEnd = ((void*)0);


 shardIdString = strrchr(tableName, SHARD_NAME_SEPARATOR);
 if (shardIdString == ((void*)0) && !missingOk)
 {
  ereport(ERROR, (errmsg("could not extract shardId from table name \"%s\"",
          tableName)));
 }
 else if (shardIdString == ((void*)0) && missingOk)
 {
  return INVALID_SHARD_ID;
 }

 shardIdString++;

 errno = 0;
 shardId = pg_strtouint64(shardIdString, &shardIdStringEnd, 0);

 if (errno != 0 || (*shardIdStringEnd != '\0'))
 {
  if (!missingOk)
  {
   ereport(ERROR, (errmsg("could not extract shardId from table name \"%s\"",
           tableName)));
  }
  else
  {
   return INVALID_SHARD_ID;
  }
 }

 return shardId;
}
