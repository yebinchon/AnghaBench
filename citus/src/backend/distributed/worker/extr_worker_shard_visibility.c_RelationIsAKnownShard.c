
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef int * Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int AppendShardIdToName (char**,scalar_t__) ;
 scalar_t__ ExtractShardIdFromTableName (char*,int) ;
 int GetLocalGroupId () ;
 scalar_t__ INVALID_SHARD_ID ;
 int IndexGetRelation (int ,int) ;
 int InvalidOid ;
 int LookupShardRelation (scalar_t__,int) ;
 int NAMEDATALEN ;
 int NoLock ;
 int OidIsValid (int ) ;
 int PrimaryNodeForGroup (int ,int*) ;
 char RELKIND_INDEX ;
 int RelationIsVisible (int ) ;
 char* get_rel_name (int ) ;
 scalar_t__ get_rel_namespace (int ) ;
 char get_rel_relkind (int ) ;
 int relation_close (int *,int ) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int * try_relation_open (int ,int ) ;

bool
RelationIsAKnownShard(Oid shardRelationId, bool onlySearchPath)
{
 int localGroupId = -1;
 char *shardRelationName = ((void*)0);
 char *generatedRelationName = ((void*)0);
 bool missingOk = 1;
 uint64 shardId = INVALID_SHARD_ID;
 Oid relationId = InvalidOid;
 char relKind = '\0';
 Relation relation = ((void*)0);

 if (!OidIsValid(shardRelationId))
 {

  return 0;
 }

 localGroupId = GetLocalGroupId();
 if (localGroupId == 0)
 {
  bool coordinatorIsKnown = 0;
  PrimaryNodeForGroup(0, &coordinatorIsKnown);

  if (!coordinatorIsKnown)
  {





   return 0;
  }
 }

 relation = try_relation_open(shardRelationId, AccessShareLock);
 if (relation == ((void*)0))
 {
  return 0;
 }
 relation_close(relation, NoLock);


 if (!RelationIsVisible(shardRelationId) && onlySearchPath)
 {
  return 0;
 }






 relKind = get_rel_relkind(shardRelationId);
 if (relKind == RELKIND_INDEX)
 {
  shardRelationId = IndexGetRelation(shardRelationId, 0);
 }


 shardRelationName = get_rel_name(shardRelationId);

 shardId = ExtractShardIdFromTableName(shardRelationName, missingOk);
 if (shardId == INVALID_SHARD_ID)
 {




  return 0;
 }


 relationId = LookupShardRelation(shardId, 1);
 if (!OidIsValid(relationId))
 {

  return 0;
 }


 if (get_rel_namespace(shardRelationId) != get_rel_namespace(relationId))
 {
  return 0;
 }






 generatedRelationName = get_rel_name(relationId);
 AppendShardIdToName(&generatedRelationName, shardId);
 if (strncmp(shardRelationName, generatedRelationName, NAMEDATALEN) == 0)
 {

  return 1;
 }

 return 0;
}
