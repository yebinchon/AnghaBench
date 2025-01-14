
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int num; int den; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int audio_chunk_size; unsigned int video_chunk_size; int padding; } ;
struct TYPE_11__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; unsigned int width; unsigned int height; int format; int codec_id; int codec_type; int channel_layout; } ;
typedef TYPE_2__ TMVContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVRational ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_CODEC_ID_TMV ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_PAL8 ;
 int ENOMEM ;
 unsigned int TMV_PADDING ;
 unsigned int TMV_STEREO ;
 scalar_t__ TMV_TAG ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_reduce (int*,int*,int,int,int) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 unsigned int avio_r8 (int *) ;
 void* avio_rl16 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int tmv_read_header(AVFormatContext *s)
{
    TMVContext *tmv = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *vst, *ast;
    AVRational fps;
    unsigned comp_method, char_cols, char_rows, features;

    if (avio_rl32(pb) != TMV_TAG)
        return -1;

    if (!(vst = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);

    if (!(ast = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);

    ast->codecpar->sample_rate = avio_rl16(pb);
    if (!ast->codecpar->sample_rate) {
        av_log(s, AV_LOG_ERROR, "invalid sample rate\n");
        return -1;
    }

    tmv->audio_chunk_size = avio_rl16(pb);
    if (!tmv->audio_chunk_size) {
        av_log(s, AV_LOG_ERROR, "invalid audio chunk size\n");
        return -1;
    }

    comp_method = avio_r8(pb);
    if (comp_method) {
        av_log(s, AV_LOG_ERROR, "unsupported compression method %d\n",
               comp_method);
        return -1;
    }

    char_cols = avio_r8(pb);
    char_rows = avio_r8(pb);
    tmv->video_chunk_size = char_cols * char_rows * 2;

    features = avio_r8(pb);
    if (features & ~(TMV_PADDING | TMV_STEREO)) {
        av_log(s, AV_LOG_ERROR, "unsupported features 0x%02x\n",
               features & ~(TMV_PADDING | TMV_STEREO));
        return -1;
    }

    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
    if (features & TMV_STEREO) {
        ast->codecpar->channels = 2;
        ast->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    } else {
        ast->codecpar->channels = 1;
        ast->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    }
    ast->codecpar->bits_per_coded_sample = 8;
    ast->codecpar->bit_rate = ast->codecpar->sample_rate *
                                           ast->codecpar->bits_per_coded_sample;
    avpriv_set_pts_info(ast, 32, 1, ast->codecpar->sample_rate);

    fps.num = ast->codecpar->sample_rate * ast->codecpar->channels;
    fps.den = tmv->audio_chunk_size;
    av_reduce(&fps.num, &fps.den, fps.num, fps.den, 0xFFFFFFFFLL);

    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id = AV_CODEC_ID_TMV;
    vst->codecpar->format = AV_PIX_FMT_PAL8;
    vst->codecpar->width = char_cols * 8;
    vst->codecpar->height = char_rows * 8;
    avpriv_set_pts_info(vst, 32, fps.den, fps.num);

    if (features & TMV_PADDING)
        tmv->padding =
            ((tmv->video_chunk_size + tmv->audio_chunk_size + 511) & ~511) -
             (tmv->video_chunk_size + tmv->audio_chunk_size);

    vst->codecpar->bit_rate = ((tmv->video_chunk_size + tmv->padding) *
                               fps.num * 8) / fps.den;

    return 0;
}
