
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVInputFormat ;
typedef int AVFormatContext ;
typedef int AVDictionary ;
typedef int AVDeviceInfoList ;


 int ff_alloc_input_device_context (int **,int *,char const*) ;
 int list_devices_for_context (int *,int *,int **) ;

int avdevice_list_input_sources(AVInputFormat *device, const char *device_name,
                                AVDictionary *device_options, AVDeviceInfoList **device_list)
{
    AVFormatContext *s = ((void*)0);
    int ret;

    if ((ret = ff_alloc_input_device_context(&s, device, device_name)) < 0)
        return ret;
    return list_devices_for_context(s, device_options, device_list);
}
