
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32 ;
typedef char* Oid ;
typedef size_t AggregateType ;


 size_t AGGREGATE_CUSTOM ;
 scalar_t__ AGGREGATE_INVALID_FIRST ;
 scalar_t__ AggregateEnabledCustom (char*) ;
 char** AggregateNames ;
 int Assert (int) ;
 int ERROR ;
 int NAMEDATALEN ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 char* get_func_name (char*) ;
 size_t lengthof (char**) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static AggregateType
GetAggregateType(Oid aggFunctionId)
{
 char *aggregateProcName = ((void*)0);
 uint32 aggregateCount = 0;
 uint32 aggregateIndex = 0;
 bool found = 0;


 aggregateProcName = get_func_name(aggFunctionId);
 if (aggregateProcName == ((void*)0))
 {
  ereport(ERROR, (errmsg("citus cache lookup failed for function %u",
          aggFunctionId)));
 }

 aggregateCount = lengthof(AggregateNames);

 Assert(AGGREGATE_INVALID_FIRST == 0);

 for (aggregateIndex = 1; aggregateIndex < aggregateCount; aggregateIndex++)
 {
  const char *aggregateName = AggregateNames[aggregateIndex];
  if (strncmp(aggregateName, aggregateProcName, NAMEDATALEN) == 0)
  {
   found = 1;
   break;
  }
 }

 if (!found)
 {
  if (AggregateEnabledCustom(aggFunctionId))
  {
   return AGGREGATE_CUSTOM;
  }

  ereport(ERROR, (errmsg("unsupported aggregate function %s", aggregateProcName)));
 }

 return aggregateIndex;
}
