
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVInputFormat ;


 int AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT ;
 int AV_CLASS_CATEGORY_DEVICE_INPUT ;
 int * device_next (int *,int ,int ,int ) ;

AVInputFormat *av_input_audio_device_next(AVInputFormat *d)
{
    return device_next(d, 0, AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT,
                       AV_CLASS_CATEGORY_DEVICE_INPUT);
}
