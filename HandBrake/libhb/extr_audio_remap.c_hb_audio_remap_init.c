
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_chan_map_t ;
struct TYPE_5__ {scalar_t__ remap_needed; int * channel_map_out; int * channel_map_in; int * remap; } ;
typedef TYPE_1__ hb_audio_remap_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
 int av_get_sample_fmt_name (int) ;
 TYPE_1__* calloc (int,int) ;
 int hb_audio_remap_free (TYPE_1__*) ;
 int hb_error (char*,...) ;
 int remap_dbl_interleaved ;
 int remap_flt_interleaved ;
 int remap_planar ;
 int remap_s16_interleaved ;
 int remap_s32_interleaved ;
 int remap_u8_interleaved ;

hb_audio_remap_t* hb_audio_remap_init(enum AVSampleFormat sample_fmt,
                                      hb_chan_map_t *channel_map_out,
                                      hb_chan_map_t *channel_map_in)
{
    hb_audio_remap_t *remap = calloc(1, sizeof(hb_audio_remap_t));
    if (remap == ((void*)0))
    {
        hb_error("hb_audio_remap_init: failed to allocate remap");
        goto fail;
    }


    switch (sample_fmt)
    {
        case 128:
        case 132:
        case 130:
        case 134:
        case 136:
            remap->remap = &remap_planar;
            break;

        case 129:
            remap->remap = &remap_u8_interleaved;
            break;

        case 133:
            remap->remap = &remap_s16_interleaved;
            break;

        case 131:
            remap->remap = &remap_s32_interleaved;
            break;

        case 135:
            remap->remap = &remap_flt_interleaved;
            break;

        case 137:
            remap->remap = &remap_dbl_interleaved;
            break;

        default:
            hb_error("hb_audio_remap_init: unsupported sample format '%s'",
                     av_get_sample_fmt_name(sample_fmt));
            goto fail;
    }


    if (channel_map_in == ((void*)0) || channel_map_out == ((void*)0))
    {
        hb_error("hb_audio_remap_init: invalid channel map(s)");
        goto fail;
    }
    remap->channel_map_in = channel_map_in;
    remap->channel_map_out = channel_map_out;


    remap->remap_needed = 0;

    return remap;

fail:
    hb_audio_remap_free(remap);
    return ((void*)0);
}
