
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_11__ {scalar_t__ size; int * data; } ;
struct TYPE_13__ {int width; int height; int version; scalar_t__ currentframe; void* framesize; void* channels; void* bits; void* taboffset; void* frames; void* filesize; scalar_t__ superchunk_remaining; TYPE_10__ vpkt; scalar_t__ pts; } ;
struct TYPE_12__ {int width; int height; int extradata_size; int extradata; scalar_t__ codec_tag; int codec_id; int codec_type; } ;
typedef TYPE_2__ Hnm4DemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_HNM4_VIDEO ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int HNM4_FRAME_FPS ;
 int av_init_packet (TYPE_10__*) ;
 int av_log (TYPE_4__*,int ,char*,int,int) ;
 int av_mallocz (int) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 void* avio_rl16 (int *) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int ) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static int hnm_read_header(AVFormatContext *s)
{
    Hnm4DemuxContext *hnm = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *vst;


    hnm->pts = 0;
    av_init_packet(&hnm->vpkt);
    hnm->vpkt.data = ((void*)0);
    hnm->vpkt.size = 0;

    hnm->superchunk_remaining = 0;

    avio_skip(pb, 8);
    hnm->width = avio_rl16(pb);
    hnm->height = avio_rl16(pb);
    hnm->filesize = avio_rl32(pb);
    hnm->frames = avio_rl32(pb);
    hnm->taboffset = avio_rl32(pb);
    hnm->bits = avio_rl16(pb);
    hnm->channels = avio_rl16(pb);
    hnm->framesize = avio_rl32(pb);
    avio_skip(pb, 32);

    hnm->currentframe = 0;

    if (hnm->width < 256 || hnm->width > 640 ||
        hnm->height < 150 || hnm->height > 480) {
        av_log(s, AV_LOG_ERROR,
               "invalid resolution: %ux%u\n", hnm->width, hnm->height);
        return AVERROR_INVALIDDATA;
    }


    if (hnm->width == 640)
        hnm->version = 0x4a;
    else
        hnm->version = 0x40;

    if (!(vst = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);

    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id = AV_CODEC_ID_HNM4_VIDEO;
    vst->codecpar->codec_tag = 0;
    vst->codecpar->width = hnm->width;
    vst->codecpar->height = hnm->height;
    vst->codecpar->extradata = av_mallocz(1);

    vst->codecpar->extradata_size = 1;
    memcpy(vst->codecpar->extradata, &hnm->version, 1);

    vst->start_time = 0;

    avpriv_set_pts_info(vst, 33, 1, HNM4_FRAME_FPS);

    return 0;
}
