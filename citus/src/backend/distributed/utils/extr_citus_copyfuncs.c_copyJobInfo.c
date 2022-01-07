
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Job ;


 int COPY_NODE_FIELD (int ) ;
 int COPY_SCALAR_FIELD (int ) ;
 int deferredPruning ;
 int dependedJobList ;
 int jobId ;
 int jobQuery ;
 int partitionKeyValue ;
 int requiresMasterEvaluation ;
 int subqueryPushdown ;
 int taskList ;

__attribute__((used)) static void
copyJobInfo(Job *newnode, Job *from)
{
 COPY_SCALAR_FIELD(jobId);
 COPY_NODE_FIELD(jobQuery);
 COPY_NODE_FIELD(taskList);
 COPY_NODE_FIELD(dependedJobList);
 COPY_SCALAR_FIELD(subqueryPushdown);
 COPY_SCALAR_FIELD(requiresMasterEvaluation);
 COPY_SCALAR_FIELD(deferredPruning);
 COPY_NODE_FIELD(partitionKeyValue);
}
