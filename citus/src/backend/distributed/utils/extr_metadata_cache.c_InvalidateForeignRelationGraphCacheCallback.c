
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ distColocationRelationId; } ;
typedef scalar_t__ Oid ;
typedef int Datum ;


 int InvalidateDistTableCache () ;
 TYPE_1__ MetadataCache ;
 int SetForeignConstraintRelationshipGraphInvalid () ;

__attribute__((used)) static void
InvalidateForeignRelationGraphCacheCallback(Datum argument, Oid relationId)
{
 if (relationId == MetadataCache.distColocationRelationId)
 {
  SetForeignConstraintRelationshipGraphInvalid();
  InvalidateDistTableCache();
 }
}
