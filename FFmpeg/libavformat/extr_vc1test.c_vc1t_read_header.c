
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int height; int width; int codec_id; int codec_type; } ;
struct TYPE_11__ {int * pb; } ;
struct TYPE_10__ {int duration; TYPE_5__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_WMV3 ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int VC1_EXTRADATA_SIZE ;
 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avio_r8 (int *) ;
 int avio_rl24 (int *) ;
 int avio_rl32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 scalar_t__ ff_get_extradata (TYPE_2__*,TYPE_5__*,int *,int ) ;

__attribute__((used)) static int vc1t_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    int frames;
    uint32_t fps;
    uint32_t size;

    frames = avio_rl24(pb);
    if (avio_r8(pb) != 0xC5 || ((size = avio_rl32(pb)) < 4))
        return AVERROR_INVALIDDATA;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_WMV3;

    if (ff_get_extradata(s, st->codecpar, pb, VC1_EXTRADATA_SIZE) < 0)
        return AVERROR(ENOMEM);

    avio_skip(pb, size - 4);
    st->codecpar->height = avio_rl32(pb);
    st->codecpar->width = avio_rl32(pb);
    if(avio_rl32(pb) != 0xC)
        return AVERROR_INVALIDDATA;
    avio_skip(pb, 8);
    fps = avio_rl32(pb);
    if(fps == 0xFFFFFFFF)
        avpriv_set_pts_info(st, 32, 1, 1000);
    else{
        if (!fps) {
            av_log(s, AV_LOG_ERROR, "Zero FPS specified, defaulting to 1 FPS\n");
            fps = 1;
        }
        avpriv_set_pts_info(st, 24, 1, fps);
        st->duration = frames;
    }

    return 0;
}
