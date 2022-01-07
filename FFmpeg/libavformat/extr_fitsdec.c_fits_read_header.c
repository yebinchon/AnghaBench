
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_13__ {TYPE_2__* codecpar; } ;
struct TYPE_10__ {int num; int den; } ;
struct TYPE_12__ {int first_image; scalar_t__ pts; TYPE_1__ framerate; } ;
struct TYPE_11__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ FITSContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_FITS ;
 int ENOMEM ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int ,int ) ;

__attribute__((used)) static int fits_read_header(AVFormatContext *s)
{
    AVStream *st;
    FITSContext * fits = s->priv_data;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_FITS;

    avpriv_set_pts_info(st, 64, fits->framerate.den, fits->framerate.num);
    fits->pts = 0;
    fits->first_image = 1;
    return 0;
}
