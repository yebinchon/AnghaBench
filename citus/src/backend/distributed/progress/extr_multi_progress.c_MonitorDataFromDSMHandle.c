
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dsm_segment ;
typedef int dsm_handle ;
struct TYPE_3__ {void* steps; } ;
typedef TYPE_1__ ProgressMonitorData ;


 int * dsm_attach (int ) ;
 int * dsm_find_mapping (int ) ;
 scalar_t__ dsm_segment_address (int *) ;

ProgressMonitorData *
MonitorDataFromDSMHandle(dsm_handle dsmHandle, dsm_segment **attachedSegment)
{
 dsm_segment *dsmSegment = dsm_find_mapping(dsmHandle);
 ProgressMonitorData *monitor = ((void*)0);

 if (dsmSegment == ((void*)0))
 {
  dsmSegment = dsm_attach(dsmHandle);
 }

 if (dsmSegment != ((void*)0))
 {
  monitor = (ProgressMonitorData *) dsm_segment_address(dsmSegment);
  monitor->steps = (void *) (monitor + 1);
  *attachedSegment = dsmSegment;
 }

 return monitor;
}
