
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bits16 ;
struct TYPE_2__ {int collname; int collnamespace; } ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_collation ;


 int COLLOID ;
 scalar_t__ CollationIsVisible (scalar_t__) ;
 int ERROR ;
 int FORMAT_COLLATE_ALLOW_INVALID ;
 int FORMAT_COLLATE_FORCE_QUALIFY ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 scalar_t__ InvalidOid ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name_or_temp (int ) ;
 char* pstrdup (char*) ;
 char* quote_qualified_identifier (char*,char*) ;

char *
FormatCollateExtended(Oid collid, bits16 flags)
{
 HeapTuple tuple = ((void*)0);
 Form_pg_collation collform = ((void*)0);
 char *buf = ((void*)0);
 char *nspname = ((void*)0);
 char *typname = ((void*)0);

 if (collid == InvalidOid && (flags & FORMAT_COLLATE_ALLOW_INVALID) != 0)
 {
  return pstrdup("-");
 }

 tuple = SearchSysCache1(COLLOID, ObjectIdGetDatum(collid));
 if (!HeapTupleIsValid(tuple))
 {
  if ((flags & FORMAT_COLLATE_ALLOW_INVALID) != 0)
  {
   return pstrdup("???");
  }
  else
  {
   elog(ERROR, "cache lookup failed for collate %u", collid);
  }
 }
 collform = (Form_pg_collation) GETSTRUCT(tuple);

 if ((flags & FORMAT_COLLATE_FORCE_QUALIFY) == 0 && CollationIsVisible(collid))
 {
  nspname = ((void*)0);
 }
 else
 {
  nspname = get_namespace_name_or_temp(collform->collnamespace);
 }

 typname = NameStr(collform->collname);

 buf = quote_qualified_identifier(nspname, typname);

 ReleaseSysCache(tuple);

 return buf;
}
