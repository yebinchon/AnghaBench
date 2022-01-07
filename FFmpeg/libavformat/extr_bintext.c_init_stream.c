
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* priv_data; } ;
struct TYPE_14__ {int time_base; TYPE_1__* codecpar; } ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_13__ {int chars_per_frame; TYPE_2__ framerate; int width; } ;
struct TYPE_11__ {int width; int height; int codec_type; scalar_t__ codec_tag; } ;
typedef TYPE_3__ BinDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVMEDIA_TYPE_VIDEO ;
 int INT_MAX ;
 int av_clip (int,int,int ) ;
 int av_q2d (int ) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int ,int ) ;

__attribute__((used)) static AVStream * init_stream(AVFormatContext *s)
{
    BinDemuxContext *bin = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return ((void*)0);
    st->codecpar->codec_tag = 0;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;

    if (!bin->width) {
        st->codecpar->width = (80<<3);
        st->codecpar->height = (25<<4);
    }

    avpriv_set_pts_info(st, 60, bin->framerate.den, bin->framerate.num);


    bin->chars_per_frame = av_clip(av_q2d(st->time_base) * bin->chars_per_frame, 1, INT_MAX);

    return st;
}
