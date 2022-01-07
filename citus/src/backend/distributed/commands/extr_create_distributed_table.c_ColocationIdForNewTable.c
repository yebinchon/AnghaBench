
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int text ;
struct TYPE_3__ {int vartype; } ;
typedef TYPE_1__ Var ;
typedef int Relation ;
typedef int Oid ;


 scalar_t__ ColocationId (int ,int ,int ) ;
 scalar_t__ CreateColocationGroup (int ,int ,int ) ;
 scalar_t__ CreateReferenceTableColocationId () ;
 char DISTRIBUTE_BY_APPEND ;
 char DISTRIBUTE_BY_NONE ;
 char DISTRIBUTE_BY_RANGE ;
 int DistColocationRelationId () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EnsureTableCanBeColocatedWith (int ,char,int ,int ) ;
 int ExclusiveLock ;
 scalar_t__ GetNextColocationId () ;
 scalar_t__ INVALID_COLOCATION_ID ;
 int NAMEDATALEN ;
 int NoLock ;
 int ResolveRelationId (int *,int) ;
 int ShardCount ;
 int ShardReplicationFactor ;
 scalar_t__ TableColocationId (int ) ;
 int * cstring_to_text (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ pg_strncasecmp (char*,char*,int ) ;

__attribute__((used)) static uint32
ColocationIdForNewTable(Oid relationId, Var *distributionColumn,
      char distributionMethod, char replicationModel,
      char *colocateWithTableName, bool viaDeprecatedAPI)
{
 uint32 colocationId = INVALID_COLOCATION_ID;

 if (viaDeprecatedAPI)
 {
  return colocationId;
 }
 else if (distributionMethod == DISTRIBUTE_BY_APPEND ||
    distributionMethod == DISTRIBUTE_BY_RANGE)
 {
  if (pg_strncasecmp(colocateWithTableName, "default", NAMEDATALEN) != 0)
  {
   ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot distribute relation"),
       errdetail("Currently, colocate_with option is only supported "
           "for hash distributed tables.")));
  }

  return colocationId;
 }
 else if (distributionMethod == DISTRIBUTE_BY_NONE)
 {
  return CreateReferenceTableColocationId();
 }
 else
 {





  Relation pgDistColocation = heap_open(DistColocationRelationId(), ExclusiveLock);

  Oid distributionColumnType = distributionColumn->vartype;
  bool createdColocationGroup = 0;

  if (pg_strncasecmp(colocateWithTableName, "default", NAMEDATALEN) == 0)
  {

   colocationId = ColocationId(ShardCount, ShardReplicationFactor,
          distributionColumnType);

   if (colocationId == INVALID_COLOCATION_ID)
   {
    colocationId = CreateColocationGroup(ShardCount, ShardReplicationFactor,
              distributionColumnType);
    createdColocationGroup = 1;
   }
  }
  else if (pg_strncasecmp(colocateWithTableName, "none", NAMEDATALEN) == 0)
  {
   colocationId = GetNextColocationId();

   createdColocationGroup = 1;
  }
  else
  {
   text *colocateWithTableNameText = cstring_to_text(colocateWithTableName);
   Oid sourceRelationId = ResolveRelationId(colocateWithTableNameText, 0);

   EnsureTableCanBeColocatedWith(relationId, replicationModel,
            distributionColumnType, sourceRelationId);

   colocationId = TableColocationId(sourceRelationId);
  }







  if (createdColocationGroup)
  {

   heap_close(pgDistColocation, NoLock);
  }
  else
  {

   heap_close(pgDistColocation, ExclusiveLock);
  }
 }

 return colocationId;
}
