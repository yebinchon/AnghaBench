
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;
typedef int AVDeviceInfoList ;


 int SND_PCM_STREAM_PLAYBACK ;
 int ff_alsa_get_device_list (int *,int ) ;

__attribute__((used)) static int audio_get_device_list(AVFormatContext *h, AVDeviceInfoList *device_list)
{
    return ff_alsa_get_device_list(device_list, SND_PCM_STREAM_PLAYBACK);
}
