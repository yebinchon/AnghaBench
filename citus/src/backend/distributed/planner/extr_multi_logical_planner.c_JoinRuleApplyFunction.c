
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * RuleApplyFunction ;
typedef size_t JoinRuleType ;


 int ApplyCartesianProduct ;
 int ApplyDualPartitionJoin ;
 int ApplyLocalJoin ;
 int ApplyReferenceJoin ;
 int ApplySingleHashPartitionJoin ;
 int ApplySingleRangePartitionJoin ;
 int Assert (int ) ;
 size_t CARTESIAN_PRODUCT ;
 size_t DUAL_PARTITION_JOIN ;
 size_t LOCAL_PARTITION_JOIN ;
 size_t REFERENCE_JOIN ;
 int ** RuleApplyFunctionArray ;
 size_t SINGLE_HASH_PARTITION_JOIN ;
 size_t SINGLE_RANGE_PARTITION_JOIN ;

__attribute__((used)) static RuleApplyFunction
JoinRuleApplyFunction(JoinRuleType ruleType)
{
 static bool ruleApplyFunctionInitialized = 0;
 RuleApplyFunction ruleApplyFunction = ((void*)0);

 if (!ruleApplyFunctionInitialized)
 {
  RuleApplyFunctionArray[REFERENCE_JOIN] = &ApplyReferenceJoin;
  RuleApplyFunctionArray[LOCAL_PARTITION_JOIN] = &ApplyLocalJoin;
  RuleApplyFunctionArray[SINGLE_HASH_PARTITION_JOIN] =
   &ApplySingleHashPartitionJoin;
  RuleApplyFunctionArray[SINGLE_RANGE_PARTITION_JOIN] =
   &ApplySingleRangePartitionJoin;
  RuleApplyFunctionArray[DUAL_PARTITION_JOIN] = &ApplyDualPartitionJoin;
  RuleApplyFunctionArray[CARTESIAN_PRODUCT] = &ApplyCartesianProduct;

  ruleApplyFunctionInitialized = 1;
 }

 ruleApplyFunction = RuleApplyFunctionArray[ruleType];
 Assert(ruleApplyFunction != ((void*)0));

 return ruleApplyFunction;
}
