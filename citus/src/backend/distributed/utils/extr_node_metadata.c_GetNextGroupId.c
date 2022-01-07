
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int32 ;
typedef int Oid ;
typedef int Datum ;


 int CitusExtensionOwner () ;
 int DatumGetInt32 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int GROUPID_SEQUENCE_NAME ;
 int GetUserIdAndSecContext (int *,int*) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ResolveRelationId (int *,int) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SetUserIdAndSecContext (int ,int) ;
 int * cstring_to_text (int ) ;
 int nextval_oid ;

int32
GetNextGroupId()
{
 text *sequenceName = cstring_to_text(GROUPID_SEQUENCE_NAME);
 Oid sequenceId = ResolveRelationId(sequenceName, 0);
 Datum sequenceIdDatum = ObjectIdGetDatum(sequenceId);
 Oid savedUserId = InvalidOid;
 int savedSecurityContext = 0;
 Datum groupIdDatum = 0;
 int32 groupId = 0;

 GetUserIdAndSecContext(&savedUserId, &savedSecurityContext);
 SetUserIdAndSecContext(CitusExtensionOwner(), SECURITY_LOCAL_USERID_CHANGE);


 groupIdDatum = DirectFunctionCall1(nextval_oid, sequenceIdDatum);

 SetUserIdAndSecContext(savedUserId, savedSecurityContext);

 groupId = DatumGetInt32(groupIdDatum);

 return groupId;
}
