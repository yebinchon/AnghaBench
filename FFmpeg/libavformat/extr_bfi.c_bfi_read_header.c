
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_14__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int channel_layout; int codec_id; int codec_type; int format; void* height; void* width; } ;
struct TYPE_13__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {TYPE_5__* codecpar; void* duration; void* nb_frames; } ;
struct TYPE_11__ {void* nframes; } ;
typedef TYPE_1__ BFIContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_BFI ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_PAL8 ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 void* avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_get_extradata (TYPE_3__*,TYPE_5__*,int *,int) ;

__attribute__((used)) static int bfi_read_header(AVFormatContext * s)
{
    BFIContext *bfi = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *vstream;
    AVStream *astream;
    int ret, fps, chunk_header;


    vstream = avformat_new_stream(s, ((void*)0));
    if (!vstream)
        return AVERROR(ENOMEM);


    astream = avformat_new_stream(s, ((void*)0));
    if (!astream)
        return AVERROR(ENOMEM);


    avio_skip(pb, 8);
    chunk_header = avio_rl32(pb);
    bfi->nframes = avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    avio_rl32(pb);
    fps = avio_rl32(pb);
    avio_skip(pb, 12);
    vstream->codecpar->width = avio_rl32(pb);
    vstream->codecpar->height = avio_rl32(pb);


    avio_skip(pb, 8);
    ret = ff_get_extradata(s, vstream->codecpar, pb, 768);
    if (ret < 0)
        return ret;

    astream->codecpar->sample_rate = avio_rl32(pb);
    if (astream->codecpar->sample_rate <= 0) {
        av_log(s, AV_LOG_ERROR, "Invalid sample rate %d\n", astream->codecpar->sample_rate);
        return AVERROR_INVALIDDATA;
    }


    avpriv_set_pts_info(vstream, 32, 1, fps);
    vstream->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vstream->codecpar->codec_id = AV_CODEC_ID_BFI;
    vstream->codecpar->format = AV_PIX_FMT_PAL8;
    vstream->nb_frames =
    vstream->duration = bfi->nframes;


    astream->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    astream->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
    astream->codecpar->channels = 1;
    astream->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    astream->codecpar->bits_per_coded_sample = 8;
    astream->codecpar->bit_rate =
        (int64_t)astream->codecpar->sample_rate * astream->codecpar->bits_per_coded_sample;
    avio_seek(pb, chunk_header - 3, SEEK_SET);
    avpriv_set_pts_info(astream, 64, 1, astream->codecpar->sample_rate);
    return 0;
}
