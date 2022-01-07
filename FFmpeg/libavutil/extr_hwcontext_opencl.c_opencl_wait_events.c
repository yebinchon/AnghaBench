
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cl_int ;
typedef int cl_event ;
typedef int AVHWFramesContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int EIO ;
 int av_log (int *,int ,char*,scalar_t__) ;
 scalar_t__ clReleaseEvent (int ) ;
 scalar_t__ clWaitForEvents (int,int *) ;

__attribute__((used)) static int opencl_wait_events(AVHWFramesContext *hwfc,
                              cl_event *events, int nb_events)
{
    cl_int cle;
    int i;

    cle = clWaitForEvents(nb_events, events);
    if (cle != CL_SUCCESS) {
        av_log(hwfc, AV_LOG_ERROR, "Failed to wait for event "
               "completion: %d.\n", cle);
        return AVERROR(EIO);
    }

    for (i = 0; i < nb_events; i++) {
        cle = clReleaseEvent(events[i]);
        if (cle != CL_SUCCESS) {
            av_log(hwfc, AV_LOG_ERROR, "Failed to release "
                   "event: %d.\n", cle);
        }
    }

    return 0;
}
