
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 char* GetUserNameFromId (int ,int) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

char *
TableOwner(Oid relationId)
{
 Oid userId = InvalidOid;
 HeapTuple tuple;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relationId));
 if (!HeapTupleIsValid(tuple))
 {
  ereport(ERROR, (errcode(ERRCODE_UNDEFINED_TABLE),
      errmsg("relation with OID %u does not exist", relationId)));
 }

 userId = ((Form_pg_class) GETSTRUCT(tuple))->relowner;

 ReleaseSysCache(tuple);

 return GetUserNameFromId(userId, 0);
}
