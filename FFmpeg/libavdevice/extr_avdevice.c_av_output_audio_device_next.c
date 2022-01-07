
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVOutputFormat ;


 int AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT ;
 int AV_CLASS_CATEGORY_DEVICE_OUTPUT ;
 int * device_next (int *,int,int ,int ) ;

AVOutputFormat *av_output_audio_device_next(AVOutputFormat *d)
{
    return device_next(d, 1, AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT,
                       AV_CLASS_CATEGORY_DEVICE_OUTPUT);
}
