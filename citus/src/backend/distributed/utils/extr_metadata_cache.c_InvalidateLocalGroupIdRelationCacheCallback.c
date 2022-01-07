
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ distLocalGroupRelationId; } ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 scalar_t__ InvalidOid ;
 int LocalGroupId ;
 TYPE_1__ MetadataCache ;

__attribute__((used)) static void
InvalidateLocalGroupIdRelationCacheCallback(Datum argument, Oid relationId)
{

 if (relationId == InvalidOid || relationId == MetadataCache.distLocalGroupRelationId)
 {
  LocalGroupId = -1;
 }
}
