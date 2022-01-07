
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ cache_size; int dts; scalar_t__ buffer_size; scalar_t__ buffer; scalar_t__ buffer_ptr; scalar_t__ soi_ptr; } ;
struct TYPE_9__ {int channels; int sample_rate; int bits_per_coded_sample; int block_align; int channel_layout; int codec_id; int codec_type; } ;
typedef TYPE_2__ MXGContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_MXPEG ;
 int AV_CODEC_ID_PCM_ALAW ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int mxg_read_header(AVFormatContext *s)
{
    AVStream *video_st, *audio_st;
    MXGContext *mxg = s->priv_data;


    video_st = avformat_new_stream(s, ((void*)0));
    if (!video_st)
        return AVERROR(ENOMEM);
    video_st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    video_st->codecpar->codec_id = AV_CODEC_ID_MXPEG;
    avpriv_set_pts_info(video_st, 64, 1, 1000000);

    audio_st = avformat_new_stream(s, ((void*)0));
    if (!audio_st)
        return AVERROR(ENOMEM);
    audio_st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    audio_st->codecpar->codec_id = AV_CODEC_ID_PCM_ALAW;
    audio_st->codecpar->channels = 1;
    audio_st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    audio_st->codecpar->sample_rate = 8000;
    audio_st->codecpar->bits_per_coded_sample = 8;
    audio_st->codecpar->block_align = 1;
    avpriv_set_pts_info(audio_st, 64, 1, 1000000);

    mxg->soi_ptr = mxg->buffer_ptr = mxg->buffer = 0;
    mxg->buffer_size = 0;
    mxg->dts = AV_NOPTS_VALUE;
    mxg->cache_size = 0;

    return 0;
}
