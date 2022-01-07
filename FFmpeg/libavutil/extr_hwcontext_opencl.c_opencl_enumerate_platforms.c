
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cl_uint ;
typedef int cl_platform_id ;
typedef scalar_t__ cl_int ;
typedef int AVHWDeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ CL_SUCCESS ;
 int ENODEV ;
 int ENOMEM ;
 int av_freep (int **) ;
 int av_log (int *,int ,char*,scalar_t__) ;
 int * av_malloc_array (scalar_t__,int) ;
 scalar_t__ clGetPlatformIDs (scalar_t__,int *,scalar_t__*) ;

__attribute__((used)) static int opencl_enumerate_platforms(AVHWDeviceContext *hwdev,
                                      cl_uint *nb_platforms,
                                      cl_platform_id **platforms,
                                      void *context)
{
    cl_int cle;

    cle = clGetPlatformIDs(0, ((void*)0), nb_platforms);
    if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to get number of "
               "OpenCL platforms: %d.\n", cle);
        return AVERROR(ENODEV);
    }
    av_log(hwdev, AV_LOG_DEBUG, "%u OpenCL platforms found.\n",
           *nb_platforms);

    *platforms = av_malloc_array(*nb_platforms, sizeof(**platforms));
    if (!*platforms)
        return AVERROR(ENOMEM);

    cle = clGetPlatformIDs(*nb_platforms, *platforms, ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to get list of OpenCL "
               "platforms: %d.\n", cle);
        av_freep(platforms);
        return AVERROR(ENODEV);
    }

    return 0;
}
