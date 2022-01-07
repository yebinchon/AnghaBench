
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nspowner; } ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_namespace ;


 scalar_t__ GETSTRUCT (int *) ;
 int GetUserId () ;
 char* GetUserNameFromId (int ,int) ;
 scalar_t__ HeapTupleIsValid (int *) ;
 int InvalidOid ;
 int NAMESPACEOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;

__attribute__((used)) static char *
SchemaOwnerName(Oid objectId)
{
 HeapTuple tuple = ((void*)0);
 Oid ownerId = InvalidOid;
 char *ownerName = ((void*)0);

 tuple = SearchSysCache1(NAMESPACEOID, ObjectIdGetDatum(objectId));
 if (HeapTupleIsValid(tuple))
 {
  ownerId = ((Form_pg_namespace) GETSTRUCT(tuple))->nspowner;
 }
 else
 {
  ownerId = GetUserId();
 }

 ownerName = GetUserNameFromId(ownerId, 0);

 ReleaseSysCache(tuple);

 return ownerName;
}
