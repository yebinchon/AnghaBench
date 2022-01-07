
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;
typedef int AVDictionary ;
typedef int AVDeviceInfoList ;


 int AV_OPT_SEARCH_CHILDREN ;
 int av_dict_copy (int **,int *,int ) ;
 int av_dict_free (int **) ;
 int av_opt_set_dict2 (int *,int **,int ) ;
 int avdevice_list_devices (int *,int **) ;
 int avformat_free_context (int *) ;

__attribute__((used)) static int list_devices_for_context(AVFormatContext *s, AVDictionary *options,
                                    AVDeviceInfoList **device_list)
{
    AVDictionary *tmp = ((void*)0);
    int ret;

    av_dict_copy(&tmp, options, 0);
    if ((ret = av_opt_set_dict2(s, &tmp, AV_OPT_SEARCH_CHILDREN)) < 0)
        goto fail;
    ret = avdevice_list_devices(s, device_list);
  fail:
    av_dict_free(&tmp);
    avformat_free_context(s);
    return ret;
}
