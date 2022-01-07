
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_2__* codecpar; int index; } ;
struct TYPE_8__ {int num; int den; } ;
struct TYPE_10__ {int video_stream_index; TYPE_1__ fps; } ;
struct TYPE_9__ {int extradata_size; void* height; void* width; int extradata; int codec_id; int codec_type; } ;
typedef TYPE_3__ FourxmDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_4XM ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 void* AV_RL32 (int *) ;
 int AV_WL32 (int ,void*) ;
 int ENOMEM ;
 int av_mallocz (scalar_t__) ;
 TYPE_4__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int ,int ) ;
 int vtrk_SIZE ;

__attribute__((used)) static int parse_vtrk(AVFormatContext *s,
                      FourxmDemuxContext *fourxm, uint8_t *buf, int size,
                      int left)
{
    AVStream *st;

    if (size != vtrk_SIZE || left < size + 8) {
        return AVERROR_INVALIDDATA;
    }


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avpriv_set_pts_info(st, 60, fourxm->fps.den, fourxm->fps.num);

    fourxm->video_stream_index = st->index;

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_4XM;

    st->codecpar->extradata = av_mallocz(4 + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!st->codecpar->extradata)
        return AVERROR(ENOMEM);
    st->codecpar->extradata_size = 4;
    AV_WL32(st->codecpar->extradata, AV_RL32(buf + 16));
    st->codecpar->width = AV_RL32(buf + 36);
    st->codecpar->height = AV_RL32(buf + 40);

    return 0;
}
