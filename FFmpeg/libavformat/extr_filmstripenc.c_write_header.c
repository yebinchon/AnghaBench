
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__** streams; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {scalar_t__ format; } ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_RGBA ;
 int av_log (TYPE_3__*,int ,char*) ;

__attribute__((used)) static int write_header(AVFormatContext *s)
{
    if (s->streams[0]->codecpar->format != AV_PIX_FMT_RGBA) {
        av_log(s, AV_LOG_ERROR, "only AV_PIX_FMT_RGBA is supported\n");
        return AVERROR_INVALIDDATA;
    }
    return 0;
}
