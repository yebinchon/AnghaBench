
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_start ;
typedef int time_end ;
typedef scalar_t__ cl_ulong ;
typedef int cl_event ;


 int CL_PROFILING_COMMAND_END ;
 int CL_PROFILING_COMMAND_START ;
 int clGetEventProfilingInfo (int ,int ,int,scalar_t__*,int *) ;

cl_ulong ff_opencl_get_event_time(cl_event event) {
    cl_ulong time_start;
    cl_ulong time_end;

    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_START, sizeof(time_start), &time_start, ((void*)0));
    clGetEventProfilingInfo(event, CL_PROFILING_COMMAND_END, sizeof(time_end), &time_end, ((void*)0));

    return time_end - time_start;
}
