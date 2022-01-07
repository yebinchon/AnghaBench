
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int flags; scalar_t__ log2_chroma_w; scalar_t__ log2_chroma_h; } ;
struct TYPE_7__ {int* map; } ;
typedef TYPE_1__ ShufflePlanesContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;


 int AV_PIX_FMT_FLAG_HWACCEL ;
 int AV_PIX_FMT_FLAG_PAL ;
 int av_pix_fmt_count_planes (int) ;
 TYPE_2__* av_pix_fmt_desc_get (int) ;
 int ff_add_format (int **,int) ;
 int ff_formats_unref (int **) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    AVFilterFormats *formats = ((void*)0);
    ShufflePlanesContext *s = ctx->priv;
    int fmt, ret, i;

    for (fmt = 0; av_pix_fmt_desc_get(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(fmt);
        int planes = av_pix_fmt_count_planes(fmt);

        if (!(desc->flags & AV_PIX_FMT_FLAG_PAL) &&
            !(desc->flags & AV_PIX_FMT_FLAG_HWACCEL)) {
            for (i = 0; i < 4; i++) {
                if (s->map[i] >= planes)
                    break;

                if ((desc->log2_chroma_h || desc->log2_chroma_w) &&
                    (i == 1 || i == 2) != (s->map[i] == 1 || s->map[i] == 2))
                    break;
            }

            if (i != 4)
                continue;
            if ((ret = ff_add_format(&formats, fmt)) < 0) {
                ff_formats_unref(&formats);
                return ret;
            }
        }
    }

    return ff_set_common_formats(ctx, formats);
}
