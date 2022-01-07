
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SampleFrequencyGranularity; int MaximumSampleFrequency; int MinimumSampleFrequency; int BitsPerSampleGranularity; int MaximumBitsPerSample; int MinimumBitsPerSample; int ChannelsGranularity; int MaximumChannels; int MinimumChannels; int guid; } ;
typedef TYPE_1__ AUDIO_STREAM_CONFIG_CAPS ;


 int dshowdebug (char*,...) ;
 int ff_printGUID (int *) ;

void ff_print_AUDIO_STREAM_CONFIG_CAPS(const AUDIO_STREAM_CONFIG_CAPS *caps)
{
}
