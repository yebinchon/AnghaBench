
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long int64 ;
struct TYPE_3__ {int (* rDestroy ) (int *) ;} ;
struct TYPE_4__ {long tuplesSent; TYPE_1__ pub; } ;
typedef TYPE_2__ TaskFileDestReceiver ;
typedef int Query ;
typedef int * ParamListInfo ;
typedef int EState ;
typedef int DestReceiver ;


 int * CreateExecutorState () ;
 scalar_t__ CreateTaskFileDestReceiver (char*,int *,int) ;
 int ExecuteQueryIntoDestReceiver (int *,int *,int *) ;
 int FreeExecutorState (int *) ;
 int stub1 (int *) ;

int64
WorkerExecuteSqlTask(Query *query, char *taskFilename, bool binaryCopyFormat)
{
 EState *estate = ((void*)0);
 TaskFileDestReceiver *taskFileDest = ((void*)0);
 ParamListInfo paramListInfo = ((void*)0);
 int64 tuplesSent = 0L;

 estate = CreateExecutorState();
 taskFileDest =
  (TaskFileDestReceiver *) CreateTaskFileDestReceiver(taskFilename, estate,
               binaryCopyFormat);

 ExecuteQueryIntoDestReceiver(query, paramListInfo, (DestReceiver *) taskFileDest);

 tuplesSent = taskFileDest->tuplesSent;

 taskFileDest->pub.rDestroy((DestReceiver *) taskFileDest);
 FreeExecutorState(estate);

 return tuplesSent;
}
