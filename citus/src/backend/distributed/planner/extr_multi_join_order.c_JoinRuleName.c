
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t JoinRuleType ;


 int Assert (int ) ;
 size_t CARTESIAN_PRODUCT ;
 size_t DUAL_PARTITION_JOIN ;
 size_t LOCAL_PARTITION_JOIN ;
 size_t REFERENCE_JOIN ;
 char** RuleNameArray ;
 size_t SINGLE_HASH_PARTITION_JOIN ;
 size_t SINGLE_RANGE_PARTITION_JOIN ;
 char* strdup (char*) ;

__attribute__((used)) static char *
JoinRuleName(JoinRuleType ruleType)
{
 static bool ruleNamesInitialized = 0;
 char *ruleName = ((void*)0);

 if (!ruleNamesInitialized)
 {

  RuleNameArray[REFERENCE_JOIN] = strdup("reference join");
  RuleNameArray[LOCAL_PARTITION_JOIN] = strdup("local partition join");
  RuleNameArray[SINGLE_HASH_PARTITION_JOIN] =
   strdup("single hash partition join");
  RuleNameArray[SINGLE_RANGE_PARTITION_JOIN] =
   strdup("single range partition join");
  RuleNameArray[DUAL_PARTITION_JOIN] = strdup("dual partition join");
  RuleNameArray[CARTESIAN_PRODUCT] = strdup("cartesian product");

  ruleNamesInitialized = 1;
 }

 ruleName = RuleNameArray[ruleType];
 Assert(ruleName != ((void*)0));

 return ruleName;
}
