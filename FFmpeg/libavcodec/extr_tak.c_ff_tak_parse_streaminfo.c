
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int channels; scalar_t__ sample_rate; int frame_samples; int ch_layout; scalar_t__ bps; void* data_type; int samples; void* codec; } ;
typedef TYPE_1__ TAKStreamInfo ;
typedef int GetBitContext ;


 int FF_ARRAY_ELEMS (int *) ;
 scalar_t__ TAK_BPS_MIN ;
 int TAK_CHANNELS_MIN ;
 int TAK_ENCODER_CODEC_BITS ;
 int TAK_ENCODER_PROFILE_BITS ;
 int TAK_FORMAT_BPS_BITS ;
 int TAK_FORMAT_CHANNEL_BITS ;
 int TAK_FORMAT_CH_LAYOUT_BITS ;
 int TAK_FORMAT_DATA_TYPE_BITS ;
 int TAK_FORMAT_SAMPLE_RATE_BITS ;
 int TAK_FORMAT_VALID_BITS ;
 scalar_t__ TAK_SAMPLE_RATE_MIN ;
 int TAK_SIZE_FRAME_DURATION_BITS ;
 int TAK_SIZE_SAMPLES_NUM_BITS ;
 void* get_bits (int *,int ) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits64 (int *,int ) ;
 int skip_bits (int *,int ) ;
 int * tak_channel_layouts ;
 int tak_get_nb_samples (scalar_t__,int) ;

void ff_tak_parse_streaminfo(TAKStreamInfo *s, GetBitContext *gb)
{
    uint64_t channel_mask = 0;
    int frame_type, i;

    s->codec = get_bits(gb, TAK_ENCODER_CODEC_BITS);
    skip_bits(gb, TAK_ENCODER_PROFILE_BITS);

    frame_type = get_bits(gb, TAK_SIZE_FRAME_DURATION_BITS);
    s->samples = get_bits64(gb, TAK_SIZE_SAMPLES_NUM_BITS);

    s->data_type = get_bits(gb, TAK_FORMAT_DATA_TYPE_BITS);
    s->sample_rate = get_bits(gb, TAK_FORMAT_SAMPLE_RATE_BITS) +
                     TAK_SAMPLE_RATE_MIN;
    s->bps = get_bits(gb, TAK_FORMAT_BPS_BITS) +
                     TAK_BPS_MIN;
    s->channels = get_bits(gb, TAK_FORMAT_CHANNEL_BITS) +
                     TAK_CHANNELS_MIN;

    if (get_bits1(gb)) {
        skip_bits(gb, TAK_FORMAT_VALID_BITS);
        if (get_bits1(gb)) {
            for (i = 0; i < s->channels; i++) {
                int value = get_bits(gb, TAK_FORMAT_CH_LAYOUT_BITS);

                if (value < FF_ARRAY_ELEMS(tak_channel_layouts))
                    channel_mask |= tak_channel_layouts[value];
            }
        }
    }

    s->ch_layout = channel_mask;
    s->frame_samples = tak_get_nb_samples(s->sample_rate, frame_type);
}
