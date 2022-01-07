
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * RuleEvalFunction ;
typedef size_t JoinRuleType ;


 int Assert (int ) ;
 size_t CARTESIAN_PRODUCT ;
 int CartesianProduct ;
 size_t DUAL_PARTITION_JOIN ;
 int DualPartitionJoin ;
 size_t LOCAL_PARTITION_JOIN ;
 int LocalJoin ;
 size_t REFERENCE_JOIN ;
 int ReferenceJoin ;
 int ** RuleEvalFunctionArray ;
 size_t SINGLE_HASH_PARTITION_JOIN ;
 size_t SINGLE_RANGE_PARTITION_JOIN ;
 int SinglePartitionJoin ;

__attribute__((used)) static RuleEvalFunction
JoinRuleEvalFunction(JoinRuleType ruleType)
{
 static bool ruleEvalFunctionsInitialized = 0;
 RuleEvalFunction ruleEvalFunction = ((void*)0);

 if (!ruleEvalFunctionsInitialized)
 {
  RuleEvalFunctionArray[REFERENCE_JOIN] = &ReferenceJoin;
  RuleEvalFunctionArray[LOCAL_PARTITION_JOIN] = &LocalJoin;
  RuleEvalFunctionArray[SINGLE_RANGE_PARTITION_JOIN] = &SinglePartitionJoin;
  RuleEvalFunctionArray[SINGLE_HASH_PARTITION_JOIN] = &SinglePartitionJoin;
  RuleEvalFunctionArray[DUAL_PARTITION_JOIN] = &DualPartitionJoin;
  RuleEvalFunctionArray[CARTESIAN_PRODUCT] = &CartesianProduct;

  ruleEvalFunctionsInitialized = 1;
 }

 ruleEvalFunction = RuleEvalFunctionArray[ruleType];
 Assert(ruleEvalFunction != ((void*)0));

 return ruleEvalFunction;
}
