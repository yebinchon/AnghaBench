
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64 ;
typedef int text ;
typedef int Oid ;
typedef int Datum ;


 int CitusExtensionOwner () ;
 scalar_t__ DatumGetInt64 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int GetUserIdAndSecContext (int *,int*) ;
 int InvalidOid ;
 scalar_t__ NextShardId ;
 int ObjectIdGetDatum (int ) ;
 int ResolveRelationId (int *,int) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SHARDID_SEQUENCE_NAME ;
 int SetUserIdAndSecContext (int ,int) ;
 int * cstring_to_text (int ) ;
 int nextval_oid ;

uint64
GetNextShardId()
{
 text *sequenceName = ((void*)0);
 Oid sequenceId = InvalidOid;
 Datum sequenceIdDatum = 0;
 Oid savedUserId = InvalidOid;
 int savedSecurityContext = 0;
 Datum shardIdDatum = 0;
 uint64 shardId = 0;
 if (NextShardId > 0)
 {
  shardId = NextShardId;
  NextShardId += 1;

  return shardId;
 }

 sequenceName = cstring_to_text(SHARDID_SEQUENCE_NAME);
 sequenceId = ResolveRelationId(sequenceName, 0);
 sequenceIdDatum = ObjectIdGetDatum(sequenceId);

 GetUserIdAndSecContext(&savedUserId, &savedSecurityContext);
 SetUserIdAndSecContext(CitusExtensionOwner(), SECURITY_LOCAL_USERID_CHANGE);


 shardIdDatum = DirectFunctionCall1(nextval_oid, sequenceIdDatum);

 SetUserIdAndSecContext(savedUserId, savedSecurityContext);

 shardId = DatumGetInt64(shardIdDatum);

 return shardId;
}
