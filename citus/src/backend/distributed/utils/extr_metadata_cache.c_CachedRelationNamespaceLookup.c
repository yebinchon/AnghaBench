
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 int ERROR ;
 int InitializeCaches () ;
 scalar_t__ InvalidOid ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ get_relname_relid (char const*,scalar_t__) ;

__attribute__((used)) static void
CachedRelationNamespaceLookup(const char *relationName, Oid relnamespace,
         Oid *cachedOid)
{

 InitializeCaches();

 if (*cachedOid == InvalidOid)
 {
  *cachedOid = get_relname_relid(relationName, relnamespace);

  if (*cachedOid == InvalidOid)
  {
   ereport(ERROR, (errmsg(
        "cache lookup failed for %s, called too early?",
        relationName)));
  }
 }
}
