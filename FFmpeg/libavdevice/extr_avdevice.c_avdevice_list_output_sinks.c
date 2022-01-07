
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVOutputFormat ;
typedef int AVFormatContext ;
typedef int AVDictionary ;
typedef int AVDeviceInfoList ;


 int avformat_alloc_output_context2 (int **,int *,char const*,int *) ;
 int list_devices_for_context (int *,int *,int **) ;

int avdevice_list_output_sinks(AVOutputFormat *device, const char *device_name,
                               AVDictionary *device_options, AVDeviceInfoList **device_list)
{
    AVFormatContext *s = ((void*)0);
    int ret;

    if ((ret = avformat_alloc_output_context2(&s, device, device_name, ((void*)0))) < 0)
        return ret;
    return list_devices_for_context(s, device_options, device_list);
}
