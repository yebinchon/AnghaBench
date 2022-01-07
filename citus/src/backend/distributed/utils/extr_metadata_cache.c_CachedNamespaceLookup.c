
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
 scalar_t__ get_namespace_oid (char const*,int) ;

__attribute__((used)) static void
CachedNamespaceLookup(const char *nspname, Oid *cachedOid)
{

 InitializeCaches();

 if (*cachedOid == InvalidOid)
 {
  *cachedOid = get_namespace_oid(nspname, 1);

  if (*cachedOid == InvalidOid)
  {
   ereport(ERROR, (errmsg(
        "cache lookup failed for namespace %s, called too early?",
        nspname)));
  }
 }
}
