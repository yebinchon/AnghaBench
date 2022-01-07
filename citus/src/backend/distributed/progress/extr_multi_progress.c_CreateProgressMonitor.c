
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int dsm_segment ;
typedef int dsm_handle ;
struct TYPE_4__ {int stepCount; int processId; } ;
typedef int Size ;
typedef TYPE_1__ ProgressMonitorData ;
typedef int Oid ;


 int DSM_CREATE_NULL_IF_MAXSEGMENTS ;
 int ERROR ;
 TYPE_1__* MonitorDataFromDSMHandle (int ,int **) ;
 int MyProcPid ;
 int PROGRESS_COMMAND_VACUUM ;
 int WARNING ;
 int currentProgressDSMHandle ;
 int * dsm_create (int,int ) ;
 int dsm_segment_handle (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int pgstat_progress_start_command (int ,int ) ;
 int pgstat_progress_update_param (int,int ) ;

ProgressMonitorData *
CreateProgressMonitor(uint64 progressTypeMagicNumber, int stepCount, Size stepSize,
       Oid relationId)
{
 dsm_segment *dsmSegment = ((void*)0);
 dsm_handle dsmHandle = 0;
 ProgressMonitorData *monitor = ((void*)0);
 Size monitorSize = 0;

 if (stepSize <= 0 || stepCount <= 0)
 {
  ereport(ERROR,
    (errmsg("number of steps and size of each step should be "
      "positive values")));
 }

 monitorSize = sizeof(ProgressMonitorData) + stepSize * stepCount;
 dsmSegment = dsm_create(monitorSize, DSM_CREATE_NULL_IF_MAXSEGMENTS);

 if (dsmSegment == ((void*)0))
 {
  ereport(WARNING,
    (errmsg("could not create a dynamic shared memory segment to "
      "keep track of progress of the current command")));
  return ((void*)0);
 }

 dsmHandle = dsm_segment_handle(dsmSegment);

 monitor = MonitorDataFromDSMHandle(dsmHandle, &dsmSegment);

 monitor->stepCount = stepCount;
 monitor->processId = MyProcPid;

 pgstat_progress_start_command(PROGRESS_COMMAND_VACUUM, relationId);
 pgstat_progress_update_param(1, dsmHandle);
 pgstat_progress_update_param(0, progressTypeMagicNumber);

 currentProgressDSMHandle = dsmHandle;

 return monitor;
}
