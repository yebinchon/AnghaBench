
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int dependedJobList; int jobId; } ;
typedef int List ;
typedef TYPE_1__ Job ;


 int * NIL ;
 int * lappend (int *,int *) ;
 scalar_t__ linitial (int *) ;
 int * list_concat (int *,int *) ;
 int * list_copy (int ) ;
 int * list_delete_first (int *) ;
 int * list_make1 (TYPE_1__*) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static List *
JobIdList(Job *job)
{
 List *jobIdList = NIL;
 List *jobQueue = NIL;





 jobQueue = list_make1(job);
 while (jobQueue != NIL)
 {
  uint64 *jobIdPointer = (uint64 *) palloc0(sizeof(uint64));
  List *jobChildrenList = NIL;

  Job *currJob = (Job *) linitial(jobQueue);
  jobQueue = list_delete_first(jobQueue);

  (*jobIdPointer) = currJob->jobId;
  jobIdList = lappend(jobIdList, jobIdPointer);


  jobChildrenList = list_copy(currJob->dependedJobList);
  if (jobChildrenList != NIL)
  {
   jobQueue = list_concat(jobQueue, jobChildrenList);
  }
 }

 return jobIdList;
}
