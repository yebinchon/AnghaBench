
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ distNodeRelationId; } ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 scalar_t__ InvalidOid ;
 TYPE_1__ MetadataCache ;
 int workerNodeHashValid ;

__attribute__((used)) static void
InvalidateNodeRelationCacheCallback(Datum argument, Oid relationId)
{
 if (relationId == InvalidOid || relationId == MetadataCache.distNodeRelationId)
 {
  workerNodeHashValid = 0;
 }
}
