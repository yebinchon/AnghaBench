
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* iformat; TYPE_5__* priv_data; } ;
struct TYPE_17__ {TYPE_4__* internal; int need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int framerate; } ;
struct TYPE_15__ {TYPE_3__* avctx; } ;
struct TYPE_14__ {int framerate; } ;
struct TYPE_13__ {int raw_codec_id; } ;
struct TYPE_12__ {int codec_id; int codec_type; } ;
typedef TYPE_5__ FFRawVideoDemuxerContext ;
typedef TYPE_6__ AVStream ;
typedef TYPE_7__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_FULL_RAW ;
 int ENOMEM ;
 TYPE_6__* avformat_new_stream (TYPE_7__*,int *) ;
 int avpriv_set_pts_info (TYPE_6__*,int,int,int) ;

int ff_raw_video_read_header(AVFormatContext *s)
{
    AVStream *st;
    FFRawVideoDemuxerContext *s1 = s->priv_data;
    int ret = 0;


    st = avformat_new_stream(s, ((void*)0));
    if (!st) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = s->iformat->raw_codec_id;
    st->need_parsing = AVSTREAM_PARSE_FULL_RAW;

    st->internal->avctx->framerate = s1->framerate;
    avpriv_set_pts_info(st, 64, 1, 1200000);

fail:
    return ret;
}
