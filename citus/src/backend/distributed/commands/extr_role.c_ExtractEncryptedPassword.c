
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int AUTHOID ;
 int AccessShareLock ;
 int Anum_pg_authid_rolpassword ;
 int AuthIdRelationId ;
 int HeapTupleIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TextDatumGetCString (int ) ;
 int heap_close (int ,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int heap_open (int ,int ) ;
 char const* pstrdup (int ) ;

__attribute__((used)) static const char *
ExtractEncryptedPassword(Oid roleOid)
{
 Relation pgAuthId = heap_open(AuthIdRelationId, AccessShareLock);
 TupleDesc pgAuthIdDescription = RelationGetDescr(pgAuthId);
 HeapTuple tuple = SearchSysCache1(AUTHOID, roleOid);
 bool isNull = 1;
 Datum passwordDatum;

 if (!HeapTupleIsValid(tuple))
 {
  return ((void*)0);
 }

 passwordDatum = heap_getattr(tuple, Anum_pg_authid_rolpassword,
         pgAuthIdDescription, &isNull);

 heap_close(pgAuthId, AccessShareLock);
 ReleaseSysCache(tuple);

 if (isNull)
 {
  return ((void*)0);
 }

 return pstrdup(TextDatumGetCString(passwordDatum));
}
