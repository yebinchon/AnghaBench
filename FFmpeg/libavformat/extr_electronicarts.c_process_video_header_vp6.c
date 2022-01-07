
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* num; void* den; } ;
struct TYPE_8__ {int codec; TYPE_1__ time_base; void* nb_frames; } ;
typedef TYPE_2__ VideoProperties ;
struct TYPE_9__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_CODEC_ID_VP6 ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*) ;
 void* avio_rl32 (int *) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static int process_video_header_vp6(AVFormatContext *s, VideoProperties *video)
{
    AVIOContext *pb = s->pb;

    avio_skip(pb, 8);
    video->nb_frames = avio_rl32(pb);
    avio_skip(pb, 4);
    video->time_base.den = avio_rl32(pb);
    video->time_base.num = avio_rl32(pb);
    if (video->time_base.den <= 0 || video->time_base.num <= 0) {
        av_log(s, AV_LOG_ERROR, "Timebase is invalid\n");
        return AVERROR_INVALIDDATA;
    }
    video->codec = AV_CODEC_ID_VP6;

    return 1;
}
