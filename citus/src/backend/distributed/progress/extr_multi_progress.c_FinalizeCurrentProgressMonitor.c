
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsm_segment ;


 int DSM_HANDLE_INVALID ;
 int currentProgressDSMHandle ;
 int dsm_detach (int *) ;
 int * dsm_find_mapping (int ) ;
 int pgstat_progress_end_command () ;

void
FinalizeCurrentProgressMonitor(void)
{
 dsm_segment *dsmSegment = dsm_find_mapping(currentProgressDSMHandle);

 if (dsmSegment != ((void*)0))
 {
  dsm_detach(dsmSegment);
 }

 pgstat_progress_end_command();

 currentProgressDSMHandle = DSM_HANDLE_INVALID;
}
