
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int in_formats; } ;
struct TYPE_9__ {int out_formats; } ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef int AVFilterFormats ;
typedef TYPE_4__ AVFilterContext ;


 int AV_PIX_FMT_FLAG_HWACCEL ;
 int av_pix_fmt_desc_get_id (TYPE_3__ const*) ;
 TYPE_3__* av_pix_fmt_desc_next (TYPE_3__ const*) ;
 int ff_add_format (int **,int ) ;
 int ff_formats_ref (int *,int *) ;
 int ff_formats_unref (int **) ;

__attribute__((used)) static int hwdownload_query_formats(AVFilterContext *avctx)
{
    AVFilterFormats *infmts = ((void*)0);
    AVFilterFormats *outfmts = ((void*)0);
    const AVPixFmtDescriptor *desc;
    int err;

    for (desc = av_pix_fmt_desc_next(((void*)0)); desc;
         desc = av_pix_fmt_desc_next(desc)) {
        if (desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
            err = ff_add_format(&infmts, av_pix_fmt_desc_get_id(desc));
        else
            err = ff_add_format(&outfmts, av_pix_fmt_desc_get_id(desc));
        if (err) {
            ff_formats_unref(&infmts);
            ff_formats_unref(&outfmts);
            return err;
        }
    }

    if ((err = ff_formats_ref(infmts, &avctx->inputs[0]->out_formats)) < 0 ||
        (err = ff_formats_ref(outfmts, &avctx->outputs[0]->in_formats)) < 0)
        return err;

    return 0;
}
