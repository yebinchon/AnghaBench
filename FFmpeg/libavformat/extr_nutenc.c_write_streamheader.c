
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int codec_type; int video_delay; int extradata_size; int sample_rate; int channels; int width; int height; int extradata; scalar_t__ codec_tag; } ;
struct TYPE_14__ {TYPE_3__* priv_data; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_13__ {TYPE_2__ sample_aspect_ratio; TYPE_6__* codecpar; } ;
struct TYPE_12__ {int time_base; TYPE_1__* stream; } ;
struct TYPE_10__ {int time_base; int msb_pts_shift; int max_pts_distance; } ;
typedef TYPE_3__ NUTContext ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVCodecParameters ;


 int AVERROR (int ) ;



 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int avio_w8 (int *,int ) ;
 int avio_wl32 (int *,scalar_t__) ;
 int avio_write (int *,int ,int) ;
 int ff_put_v (int *,int) ;

__attribute__((used)) static int write_streamheader(AVFormatContext *avctx, AVIOContext *bc,
                              AVStream *st, int i)
{
    NUTContext *nut = avctx->priv_data;
    AVCodecParameters *par = st->codecpar;

    ff_put_v(bc, i);
    switch (par->codec_type) {
    case 128: ff_put_v(bc, 0); break;
    case 130: ff_put_v(bc, 1); break;
    case 129: ff_put_v(bc, 2); break;
    default: ff_put_v(bc, 3); break;
    }
    ff_put_v(bc, 4);

    if (par->codec_tag) {
        avio_wl32(bc, par->codec_tag);
    } else {
        av_log(avctx, AV_LOG_ERROR, "No codec tag defined for stream %d\n", i);
        return AVERROR(EINVAL);
    }

    ff_put_v(bc, nut->stream[i].time_base - nut->time_base);
    ff_put_v(bc, nut->stream[i].msb_pts_shift);
    ff_put_v(bc, nut->stream[i].max_pts_distance);
    ff_put_v(bc, par->video_delay);
    avio_w8(bc, 0);

    ff_put_v(bc, par->extradata_size);
    avio_write(bc, par->extradata, par->extradata_size);

    switch (par->codec_type) {
    case 130:
        ff_put_v(bc, par->sample_rate);
        ff_put_v(bc, 1);
        ff_put_v(bc, par->channels);
        break;
    case 128:
        ff_put_v(bc, par->width);
        ff_put_v(bc, par->height);

        if (st->sample_aspect_ratio.num <= 0 ||
            st->sample_aspect_ratio.den <= 0) {
            ff_put_v(bc, 0);
            ff_put_v(bc, 0);
        } else {
            ff_put_v(bc, st->sample_aspect_ratio.num);
            ff_put_v(bc, st->sample_aspect_ratio.den);
        }
        ff_put_v(bc, 0);
        break;
    default:
        break;
    }
    return 0;
}
