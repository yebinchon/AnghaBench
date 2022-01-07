
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enumlabel; } ;
typedef char const* Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_enum ;


 char DISTRIBUTE_BY_APPEND ;
 char DISTRIBUTE_BY_HASH ;
 char DISTRIBUTE_BY_RANGE ;
 int ENUMOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int NAMEDATALEN ;
 char* NameStr (int ) ;
 int ObjectIdGetDatum (char const*) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static char
LookupDistributionMethod(Oid distributionMethodOid)
{
 HeapTuple enumTuple = ((void*)0);
 Form_pg_enum enumForm = ((void*)0);
 char distributionMethod = 0;
 const char *enumLabel = ((void*)0);

 enumTuple = SearchSysCache1(ENUMOID, ObjectIdGetDatum(distributionMethodOid));
 if (!HeapTupleIsValid(enumTuple))
 {
  ereport(ERROR, (errmsg("invalid internal value for enum: %u",
          distributionMethodOid)));
 }

 enumForm = (Form_pg_enum) GETSTRUCT(enumTuple);
 enumLabel = NameStr(enumForm->enumlabel);

 if (strncmp(enumLabel, "append", NAMEDATALEN) == 0)
 {
  distributionMethod = DISTRIBUTE_BY_APPEND;
 }
 else if (strncmp(enumLabel, "hash", NAMEDATALEN) == 0)
 {
  distributionMethod = DISTRIBUTE_BY_HASH;
 }
 else if (strncmp(enumLabel, "range", NAMEDATALEN) == 0)
 {
  distributionMethod = DISTRIBUTE_BY_RANGE;
 }
 else
 {
  ereport(ERROR, (errmsg("invalid label for enum: %s", enumLabel)));
 }

 ReleaseSysCache(enumTuple);

 return distributionMethod;
}
