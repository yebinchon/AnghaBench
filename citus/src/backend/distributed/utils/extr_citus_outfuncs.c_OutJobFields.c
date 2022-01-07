
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Job ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_UINT64_FIELD (int ) ;
 int deferredPruning ;
 int dependedJobList ;
 int jobId ;
 int jobQuery ;
 int partitionKeyValue ;
 int requiresMasterEvaluation ;
 int subqueryPushdown ;
 int taskList ;

__attribute__((used)) static void
OutJobFields(StringInfo str, const Job *node)
{
 WRITE_UINT64_FIELD(jobId);
 WRITE_NODE_FIELD(jobQuery);
 WRITE_NODE_FIELD(taskList);
 WRITE_NODE_FIELD(dependedJobList);
 WRITE_BOOL_FIELD(subqueryPushdown);
 WRITE_BOOL_FIELD(requiresMasterEvaluation);
 WRITE_BOOL_FIELD(deferredPruning);
 WRITE_NODE_FIELD(partitionKeyValue);
}
