
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_9__ {int nb_streams; TYPE_3__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {TYPE_5__* fc; } ;
struct TYPE_6__ {scalar_t__ sample_rate; int frame_size; int channel_layout; int channels; void* bits_per_coded_sample; void* bit_rate; } ;
typedef TYPE_2__ MOVContext ;
typedef int MOVAtom ;
typedef int GetBitContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_CH_FRONT_CENTER ;
 int AV_CH_FRONT_LEFT ;
 int AV_CH_FRONT_RIGHT ;
 int AV_CH_LOW_FREQUENCY ;
 int AV_CH_SIDE_LEFT ;
 int AV_CH_SIDE_RIGHT ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_free (int *) ;
 int av_get_channel_layout_nb_channels (int) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int * av_malloc (scalar_t__) ;
 int const avio_read (int *,int *,int const) ;
 void* get_bits (int *,int) ;
 void* get_bits_long (int *,int) ;
 int init_get_bits (int *,int *,int) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int mov_read_ddts(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    const uint32_t ddts_size = 20;
    AVStream *st = ((void*)0);
    uint8_t *buf = ((void*)0);
    uint32_t frame_duration_code = 0;
    uint32_t channel_layout_code = 0;
    GetBitContext gb;

    buf = av_malloc(ddts_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!buf) {
        return AVERROR(ENOMEM);
    }
    if (avio_read(pb, buf, ddts_size) < ddts_size) {
        av_free(buf);
        return AVERROR_INVALIDDATA;
    }

    init_get_bits(&gb, buf, 8*ddts_size);

    if (c->fc->nb_streams < 1) {
        av_free(buf);
        return 0;
    }
    st = c->fc->streams[c->fc->nb_streams-1];

    st->codecpar->sample_rate = get_bits_long(&gb, 32);
    if (st->codecpar->sample_rate <= 0) {
        av_log(c->fc, AV_LOG_ERROR, "Invalid sample rate %d\n", st->codecpar->sample_rate);
        av_free(buf);
        return AVERROR_INVALIDDATA;
    }
    skip_bits_long(&gb, 32);
    st->codecpar->bit_rate = get_bits_long(&gb, 32);
    st->codecpar->bits_per_coded_sample = get_bits(&gb, 8);
    frame_duration_code = get_bits(&gb, 2);
    skip_bits(&gb, 30);
    channel_layout_code = get_bits(&gb, 16);

    st->codecpar->frame_size =
            (frame_duration_code == 0) ? 512 :
            (frame_duration_code == 1) ? 1024 :
            (frame_duration_code == 2) ? 2048 :
            (frame_duration_code == 3) ? 4096 : 0;

    if (channel_layout_code > 0xff) {
        av_log(c->fc, AV_LOG_WARNING, "Unsupported DTS audio channel layout");
    }
    st->codecpar->channel_layout =
            ((channel_layout_code & 0x1) ? AV_CH_FRONT_CENTER : 0) |
            ((channel_layout_code & 0x2) ? AV_CH_FRONT_LEFT : 0) |
            ((channel_layout_code & 0x2) ? AV_CH_FRONT_RIGHT : 0) |
            ((channel_layout_code & 0x4) ? AV_CH_SIDE_LEFT : 0) |
            ((channel_layout_code & 0x4) ? AV_CH_SIDE_RIGHT : 0) |
            ((channel_layout_code & 0x8) ? AV_CH_LOW_FREQUENCY : 0);

    st->codecpar->channels = av_get_channel_layout_nb_channels(st->codecpar->channel_layout);
    av_free(buf);

    return 0;
}
