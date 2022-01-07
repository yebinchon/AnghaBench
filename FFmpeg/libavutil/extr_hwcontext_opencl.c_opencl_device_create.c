
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int platform_index; int device_index; int * filter_device; int * enumerate_devices; int * filter_platform; int * enumerate_platforms; int * context; } ;
typedef TYPE_1__ OpenCLDeviceSelector ;
typedef int AVHWDeviceContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*,char const*) ;
 int opencl_device_create_internal (int *,TYPE_1__*,int *) ;
 int opencl_enumerate_devices ;
 int opencl_enumerate_platforms ;
 int opencl_filter_device ;
 int opencl_filter_platform ;
 int sscanf (char const*,char*,int*,...) ;

__attribute__((used)) static int opencl_device_create(AVHWDeviceContext *hwdev, const char *device,
                                AVDictionary *opts, int flags)
{
    OpenCLDeviceSelector selector = {
        .context = opts,
        .enumerate_platforms = &opencl_enumerate_platforms,
        .filter_platform = &opencl_filter_platform,
        .enumerate_devices = &opencl_enumerate_devices,
        .filter_device = &opencl_filter_device,
    };

    if (device && device[0]) {

        int d = -1, p = -1, ret;
        if (device[0] == '.')
            ret = sscanf(device, ".%d", &d);
        else
            ret = sscanf(device, "%d.%d", &p, &d);
        if (ret < 1) {
            av_log(hwdev, AV_LOG_ERROR, "Invalid OpenCL platform/device "
                   "index specification \"%s\".\n", device);
            return AVERROR(EINVAL);
        }
        selector.platform_index = p;
        selector.device_index = d;
    } else {
        selector.platform_index = -1;
        selector.device_index = -1;
    }

    return opencl_device_create_internal(hwdev, &selector, ((void*)0));
}
