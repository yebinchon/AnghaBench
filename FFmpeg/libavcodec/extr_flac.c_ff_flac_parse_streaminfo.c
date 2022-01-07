
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct FLACStreaminfo {int max_blocksize; scalar_t__ channels; int bps; int samples; void* samplerate; void* max_framesize; } ;
struct TYPE_5__ {scalar_t__ channels; int bits_per_raw_sample; int channel_layout; void* sample_rate; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int FLAC_MIN_BLOCKSIZE ;
 int FLAC_STREAMINFO_SIZE ;
 scalar_t__ av_get_channel_layout_nb_channels (int ) ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int ff_flac_set_channel_layout (TYPE_1__*) ;
 void* get_bits (int *,int) ;
 int get_bits64 (int *,int) ;
 void* get_bits_long (int *,int) ;
 int init_get_bits (int *,int const*,int) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (int *,int) ;

int ff_flac_parse_streaminfo(AVCodecContext *avctx, struct FLACStreaminfo *s,
                              const uint8_t *buffer)
{
    GetBitContext gb;
    init_get_bits(&gb, buffer, FLAC_STREAMINFO_SIZE*8);

    skip_bits(&gb, 16);
    s->max_blocksize = get_bits(&gb, 16);
    if (s->max_blocksize < FLAC_MIN_BLOCKSIZE) {
        av_log(avctx, AV_LOG_WARNING, "invalid max blocksize: %d\n",
               s->max_blocksize);
        s->max_blocksize = 16;
        return AVERROR_INVALIDDATA;
    }

    skip_bits(&gb, 24);
    s->max_framesize = get_bits_long(&gb, 24);

    s->samplerate = get_bits_long(&gb, 20);
    s->channels = get_bits(&gb, 3) + 1;
    s->bps = get_bits(&gb, 5) + 1;

    if (s->bps < 4) {
        av_log(avctx, AV_LOG_ERROR, "invalid bps: %d\n", s->bps);
        s->bps = 16;
        return AVERROR_INVALIDDATA;
    }

    avctx->channels = s->channels;
    avctx->sample_rate = s->samplerate;
    avctx->bits_per_raw_sample = s->bps;

    if (!avctx->channel_layout ||
        av_get_channel_layout_nb_channels(avctx->channel_layout) != avctx->channels)
        ff_flac_set_channel_layout(avctx);

    s->samples = get_bits64(&gb, 36);

    skip_bits_long(&gb, 64);
    skip_bits_long(&gb, 64);

    return 0;
}
