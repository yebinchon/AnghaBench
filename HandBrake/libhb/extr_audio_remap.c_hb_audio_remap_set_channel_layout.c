
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int remap_needed; int nchannels; scalar_t__ channel_map_in; scalar_t__ channel_map_out; int* table; } ;
typedef TYPE_1__ hb_audio_remap_t ;


 scalar_t__ AV_CH_LAYOUT_STEREO ;
 scalar_t__ AV_CH_LAYOUT_STEREO_DOWNMIX ;
 int HB_AUDIO_REMAP_MAX_CHANNELS ;
 int av_get_channel_layout_nb_channels (scalar_t__) ;
 int hb_audio_remap_build_table (scalar_t__,scalar_t__,scalar_t__,int*) ;
 int hb_log (char*,int) ;

void hb_audio_remap_set_channel_layout(hb_audio_remap_t *remap,
                                       uint64_t channel_layout)
{
    if (remap != ((void*)0))
    {
        int ii;
        remap->remap_needed = 0;


        if (channel_layout == AV_CH_LAYOUT_STEREO_DOWNMIX)
        {
            channel_layout = AV_CH_LAYOUT_STEREO;
        }
        remap->nchannels = av_get_channel_layout_nb_channels(channel_layout);


        if (remap->nchannels > HB_AUDIO_REMAP_MAX_CHANNELS)
        {
            hb_log("hb_audio_remap_set_channel_layout: too many channels (%d)",
                   remap->nchannels);
            return;
        }
        if (remap->channel_map_in == remap->channel_map_out)
        {
            return;
        }


        hb_audio_remap_build_table(remap->channel_map_out,
                                   remap->channel_map_in, channel_layout,
                                   remap->table);
        for (ii = 0; ii < remap->nchannels; ii++)
        {
            if (remap->table[ii] != ii)
            {
                remap->remap_needed = 1;
                break;
            }
        }
    }
}
