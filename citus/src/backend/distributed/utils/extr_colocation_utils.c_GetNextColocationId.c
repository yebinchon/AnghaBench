
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int text ;
typedef int Oid ;
typedef int Datum ;


 int COLOCATIONID_SEQUENCE_NAME ;
 int CitusExtensionOwner () ;
 int DatumGetUInt32 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int GetUserIdAndSecContext (int *,int*) ;
 int INVALID_COLOCATION_ID ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ResolveRelationId (int *,int) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SetUserIdAndSecContext (int ,int) ;
 int * cstring_to_text (int ) ;
 int nextval_oid ;

uint32
GetNextColocationId()
{
 text *sequenceName = cstring_to_text(COLOCATIONID_SEQUENCE_NAME);
 Oid sequenceId = ResolveRelationId(sequenceName, 0);
 Datum sequenceIdDatum = ObjectIdGetDatum(sequenceId);
 Oid savedUserId = InvalidOid;
 int savedSecurityContext = 0;
 Datum colocationIdDatum = 0;
 uint32 colocationId = INVALID_COLOCATION_ID;

 GetUserIdAndSecContext(&savedUserId, &savedSecurityContext);
 SetUserIdAndSecContext(CitusExtensionOwner(), SECURITY_LOCAL_USERID_CHANGE);


 colocationIdDatum = DirectFunctionCall1(nextval_oid, sequenceIdDatum);

 SetUserIdAndSecContext(savedUserId, savedSecurityContext);

 colocationId = DatumGetUInt32(colocationIdDatum);

 return colocationId;
}
