
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int num; int den; } ;
struct TYPE_17__ {int chars_per_frame; int fsize; TYPE_2__ framerate; int height; int width; } ;
typedef TYPE_3__ TtyDemuxContext ;
struct TYPE_19__ {TYPE_10__* pb; TYPE_3__* priv_data; } ;
struct TYPE_18__ {int duration; int time_base; TYPE_2__ avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_15__ {int height; int width; int codec_id; int codec_type; scalar_t__ codec_tag; } ;
struct TYPE_14__ {int seekable; } ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_ANSI ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int SEEK_SET ;
 int av_q2d (int ) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_seek (TYPE_10__*,int ,int ) ;
 int avio_size (TYPE_10__*) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int ,int ) ;
 int efi_read (TYPE_5__*,int) ;
 scalar_t__ ff_sauce_read (TYPE_5__*,int*,int ,int ) ;

__attribute__((used)) static int read_header(AVFormatContext *avctx)
{
    TtyDemuxContext *s = avctx->priv_data;
    int ret = 0;
    AVStream *st = avformat_new_stream(avctx, ((void*)0));

    if (!st) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    st->codecpar->codec_tag = 0;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_ANSI;

    st->codecpar->width = s->width;
    st->codecpar->height = s->height;
    avpriv_set_pts_info(st, 60, s->framerate.den, s->framerate.num);
    st->avg_frame_rate = s->framerate;


    s->chars_per_frame = FFMAX(av_q2d(st->time_base)*s->chars_per_frame, 1);

    if (avctx->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        s->fsize = avio_size(avctx->pb);
        st->duration = (s->fsize + s->chars_per_frame - 1) / s->chars_per_frame;

        if (ff_sauce_read(avctx, &s->fsize, 0, 0) < 0)
            efi_read(avctx, s->fsize - 51);

        avio_seek(avctx->pb, 0, SEEK_SET);
    }

fail:
    return ret;
}
