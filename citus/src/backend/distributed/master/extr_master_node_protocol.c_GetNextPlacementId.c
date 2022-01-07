
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
 scalar_t__ NextPlacementId ;
 int ObjectIdGetDatum (int ) ;
 int PLACEMENTID_SEQUENCE_NAME ;
 int ResolveRelationId (int *,int) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SetUserIdAndSecContext (int ,int) ;
 int * cstring_to_text (int ) ;
 int nextval_oid ;

uint64
GetNextPlacementId(void)
{
 text *sequenceName = ((void*)0);
 Oid sequenceId = InvalidOid;
 Datum sequenceIdDatum = 0;
 Oid savedUserId = InvalidOid;
 int savedSecurityContext = 0;
 Datum placementIdDatum = 0;
 uint64 placementId = 0;
 if (NextPlacementId > 0)
 {
  placementId = NextPlacementId;
  NextPlacementId += 1;

  return placementId;
 }

 sequenceName = cstring_to_text(PLACEMENTID_SEQUENCE_NAME);
 sequenceId = ResolveRelationId(sequenceName, 0);
 sequenceIdDatum = ObjectIdGetDatum(sequenceId);

 GetUserIdAndSecContext(&savedUserId, &savedSecurityContext);
 SetUserIdAndSecContext(CitusExtensionOwner(), SECURITY_LOCAL_USERID_CHANGE);


 placementIdDatum = DirectFunctionCall1(nextval_oid, sequenceIdDatum);

 SetUserIdAndSecContext(savedUserId, savedSecurityContext);

 placementId = DatumGetInt64(placementIdDatum);

 return placementId;
}
