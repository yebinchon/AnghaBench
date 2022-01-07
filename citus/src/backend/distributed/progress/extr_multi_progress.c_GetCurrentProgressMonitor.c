
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;
typedef int ProgressMonitorData ;


 int * MonitorDataFromDSMHandle (int ,int **) ;
 int currentProgressDSMHandle ;

ProgressMonitorData *
GetCurrentProgressMonitor(void)
{
 dsm_segment *dsmSegment = ((void*)0);
 ProgressMonitorData *monitor = MonitorDataFromDSMHandle(currentProgressDSMHandle,
               &dsmSegment);

 return monitor;
}
