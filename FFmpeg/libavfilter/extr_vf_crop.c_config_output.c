
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int sample_aspect_ratio; int h; int w; int format; TYPE_1__* src; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int out_sar; int h; int w; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_2__ CropContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_PIX_FMT_FLAG_HWACCEL ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_output(AVFilterLink *link)
{
    CropContext *s = link->src->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(link->format);

    if (desc->flags & AV_PIX_FMT_FLAG_HWACCEL) {


    } else {
        link->w = s->w;
        link->h = s->h;
    }
    link->sample_aspect_ratio = s->out_sar;

    return 0;
}
