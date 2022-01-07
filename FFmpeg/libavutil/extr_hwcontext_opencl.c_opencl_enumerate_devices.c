
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* cl_uint ;
typedef int cl_platform_id ;
typedef char const* cl_int ;
typedef int cl_device_id ;
typedef int AVHWDeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 char const* CL_DEVICE_NOT_FOUND ;
 int CL_DEVICE_TYPE_ALL ;
 char const* CL_SUCCESS ;
 int ENODEV ;
 int ENOMEM ;
 int av_freep (int **) ;
 int av_log (int *,int ,char*,char const*,...) ;
 int * av_malloc_array (char const*,int) ;
 char* clGetDeviceIDs (int ,int ,char const*,int *,char const**) ;

__attribute__((used)) static int opencl_enumerate_devices(AVHWDeviceContext *hwdev,
                                    cl_platform_id platform_id,
                                    const char *platform_name,
                                    cl_uint *nb_devices,
                                    cl_device_id **devices,
                                    void *context)
{
    cl_int cle;

    cle = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ALL,
                         0, ((void*)0), nb_devices);
    if (cle == CL_DEVICE_NOT_FOUND) {
        av_log(hwdev, AV_LOG_DEBUG, "No devices found "
               "on platform \"%s\".\n", platform_name);
        *nb_devices = 0;
        return 0;
    } else if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to get number of devices "
               "on platform \"%s\": %d.\n", platform_name, cle);
        return AVERROR(ENODEV);
    }
    av_log(hwdev, AV_LOG_DEBUG, "%u OpenCL devices found on "
           "platform \"%s\".\n", *nb_devices, platform_name);

    *devices = av_malloc_array(*nb_devices, sizeof(**devices));
    if (!*devices)
        return AVERROR(ENOMEM);

    cle = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ALL,
                         *nb_devices, *devices, ((void*)0));
    if (cle != CL_SUCCESS) {
        av_log(hwdev, AV_LOG_ERROR, "Failed to get list of devices "
               "on platform \"%s\": %d.\n", platform_name, cle);
        av_freep(devices);
        return AVERROR(ENODEV);
    }

    return 0;
}
