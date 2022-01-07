
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Job ;


 int CitusSetTag (int *,int ) ;
 int READ_BOOL_FIELD (int ) ;
 int READ_NODE_FIELD (int ) ;
 int READ_TEMP_LOCALS () ;
 int READ_UINT64_FIELD (int ) ;
 int T_Job ;
 int deferredPruning ;
 int dependedJobList ;
 int jobId ;
 int jobQuery ;
 int partitionKeyValue ;
 int requiresMasterEvaluation ;
 int subqueryPushdown ;
 int taskList ;

__attribute__((used)) static void
readJobInfo(Job *local_node)
{
 READ_TEMP_LOCALS();

 CitusSetTag((Node *) local_node, T_Job);

 READ_UINT64_FIELD(jobId);
 READ_NODE_FIELD(jobQuery);
 READ_NODE_FIELD(taskList);
 READ_NODE_FIELD(dependedJobList);
 READ_BOOL_FIELD(subqueryPushdown);
 READ_BOOL_FIELD(requiresMasterEvaluation);
 READ_BOOL_FIELD(deferredPruning);
 READ_NODE_FIELD(partitionKeyValue);
}
