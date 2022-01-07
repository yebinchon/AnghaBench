
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {TYPE_1__* relationRestrictionContext; } ;
struct TYPE_5__ {int relationRestrictionList; } ;
typedef TYPE_1__ RelationRestrictionContext ;
typedef TYPE_2__ PlannerRestrictionContext ;


 int ReferenceRelationCount (TYPE_1__*) ;
 int list_length (int ) ;

__attribute__((used)) static bool
ContainsMultipleDistributedRelations(PlannerRestrictionContext *
          plannerRestrictionContext)
{
 RelationRestrictionContext *restrictionContext =
  plannerRestrictionContext->relationRestrictionContext;

 uint32 referenceRelationCount = ReferenceRelationCount(restrictionContext);
 uint32 totalRelationCount = list_length(restrictionContext->relationRestrictionList);
 uint32 nonReferenceRelationCount = totalRelationCount - referenceRelationCount;
 if (nonReferenceRelationCount <= 1)
 {
  return 0;
 }

 return 1;
}
