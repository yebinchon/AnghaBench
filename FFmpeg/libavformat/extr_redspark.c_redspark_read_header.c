
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_14__ {int sample_rate; int channels; scalar_t__ extradata; int codec_type; int codec_id; } ;
struct TYPE_13__ {TYPE_1__* priv_data; int * pb; } ;
struct TYPE_12__ {int duration; TYPE_4__* codecpar; } ;
struct TYPE_11__ {scalar_t__ samples_count; } ;
typedef TYPE_1__ RedSparkContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_THP ;
 int AV_LOG_ERROR ;
 int AV_WB32 (int *,int) ;
 int ENOMEM ;
 int HEADER_SIZE ;
 int SEEK_SET ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_rb32 (int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int bytestream2_get_be32u (int *) ;
 int bytestream2_get_bufferu (int *,scalar_t__,int) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_skipu (int *,int) ;
 scalar_t__ ff_alloc_extradata (TYPE_4__*,int) ;
 int rol (int,int) ;

__attribute__((used)) static int redspark_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    RedSparkContext *redspark = s->priv_data;
    AVCodecParameters *par;
    GetByteContext gbc;
    int i, coef_off, ret = 0;
    uint32_t key, data;
    uint8_t header[HEADER_SIZE];
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    par = st->codecpar;


    data = avio_rb32(pb);
    key = data ^ 0x52656453;
    data ^= key;
    AV_WB32(header, data);
    key = rol(key, 11);

    for (i = 4; i < HEADER_SIZE; i += 4) {
        key += rol(key, 3);
        data = avio_rb32(pb) ^ key;
        AV_WB32(header + i, data);
    }

    par->codec_id = AV_CODEC_ID_ADPCM_THP;
    par->codec_type = AVMEDIA_TYPE_AUDIO;

    bytestream2_init(&gbc, header, HEADER_SIZE);
    bytestream2_seek(&gbc, 0x3c, SEEK_SET);
    par->sample_rate = bytestream2_get_be32u(&gbc);
    if (par->sample_rate <= 0 || par->sample_rate > 96000) {
        av_log(s, AV_LOG_ERROR, "Invalid sample rate: %d\n", par->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    st->duration = bytestream2_get_be32u(&gbc) * 14;
    redspark->samples_count = 0;
    bytestream2_skipu(&gbc, 10);
    par->channels = bytestream2_get_byteu(&gbc);
    if (!par->channels) {
        return AVERROR_INVALIDDATA;
    }

    coef_off = 0x54 + par->channels * 8;
    if (bytestream2_get_byteu(&gbc))
        coef_off += 16;

    if (coef_off + par->channels * (32 + 14) > HEADER_SIZE) {
        return AVERROR_INVALIDDATA;
    }

    if (ff_alloc_extradata(par, 32 * par->channels)) {
        return AVERROR_INVALIDDATA;
    }


    bytestream2_seek(&gbc, coef_off, SEEK_SET);
    for (i = 0; i < par->channels; i++) {
        if (bytestream2_get_bufferu(&gbc, par->extradata + i * 32, 32) != 32) {
            return AVERROR_INVALIDDATA;
        }
        bytestream2_skipu(&gbc, 14);
    }

    avpriv_set_pts_info(st, 64, 1, par->sample_rate);

    return ret;
}
