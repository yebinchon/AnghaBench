
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int targetlist; } ;
typedef TYPE_1__ Plan ;
typedef int Oid ;
typedef int List ;
typedef int AttrNumber ;
typedef int AggStrategy ;
typedef int Agg ;


 int AGGSPLIT_SIMPLE ;
 int NIL ;
 int extract_grouping_collations (int *,int ) ;
 int * extract_grouping_cols (int *,int ) ;
 int * extract_grouping_ops (int *) ;
 int list_length (int *) ;
 int * make_agg (int *,int *,int ,int ,int,int *,int *,int ,int ,int const,...) ;

__attribute__((used)) static Agg *
makeAggNode(List *groupClauseList, List *havingQual, AggStrategy aggrStrategy,
   List *queryTargetList, Plan *subPlan)
{
 Agg *aggNode = ((void*)0);
 int groupColumnCount = list_length(groupClauseList);
 AttrNumber *groupColumnIdArray =
  extract_grouping_cols(groupClauseList, subPlan->targetlist);
 Oid *groupColumnOpArray = extract_grouping_ops(groupClauseList);
 const int rowEstimate = 10;
 aggNode = make_agg(queryTargetList, havingQual, aggrStrategy,
        AGGSPLIT_SIMPLE, groupColumnCount, groupColumnIdArray,
        groupColumnOpArray,
        NIL, NIL, rowEstimate, subPlan);


 return aggNode;
}
