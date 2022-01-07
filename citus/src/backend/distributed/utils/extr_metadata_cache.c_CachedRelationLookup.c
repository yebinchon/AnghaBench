
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int CachedRelationNamespaceLookup (char const*,int ,int *) ;
 int PG_CATALOG_NAMESPACE ;

__attribute__((used)) static void
CachedRelationLookup(const char *relationName, Oid *cachedOid)
{
 CachedRelationNamespaceLookup(relationName, PG_CATALOG_NAMESPACE, cachedOid);
}
