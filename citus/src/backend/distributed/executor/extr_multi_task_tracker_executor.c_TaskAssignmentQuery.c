
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int taskId; int jobId; } ;
typedef TYPE_1__ Task ;
typedef int * StringInfo ;


 int TASK_ASSIGNMENT_QUERY ;
 int appendStringInfo (int *,int ,int ,int ,char*) ;
 int * makeStringInfo () ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static StringInfo
TaskAssignmentQuery(Task *task, char *queryString)
{
 StringInfo taskAssignmentQuery = ((void*)0);


 char *escapedQueryString = quote_literal_cstr(queryString);

 taskAssignmentQuery = makeStringInfo();
 appendStringInfo(taskAssignmentQuery, TASK_ASSIGNMENT_QUERY,
      task->jobId, task->taskId, escapedQueryString);

 return taskAssignmentQuery;
}
