
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** streams; } ;
struct TYPE_7__ {size_t stream_index; int duration; int dts; int pts; } ;
struct TYPE_6__ {int time_base; } ;
typedef int AVRational ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 char* av_ts2str (int ) ;
 char* av_ts2timestr (int ,int *) ;
 int printf (char*,char const*,char*,char*,char*,char*,char*,char*,size_t) ;

__attribute__((used)) static void log_packet(const AVFormatContext *fmt_ctx, const AVPacket *pkt, const char *tag)
{
    AVRational *time_base = &fmt_ctx->streams[pkt->stream_index]->time_base;

    printf("%s: pts:%s pts_time:%s dts:%s dts_time:%s duration:%s duration_time:%s stream_index:%d\n",
           tag,
           av_ts2str(pkt->pts), av_ts2timestr(pkt->pts, time_base),
           av_ts2str(pkt->dts), av_ts2timestr(pkt->dts, time_base),
           av_ts2str(pkt->duration), av_ts2timestr(pkt->duration, time_base),
           pkt->stream_index);
}
