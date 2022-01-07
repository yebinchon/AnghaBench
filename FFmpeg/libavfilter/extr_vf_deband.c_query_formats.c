
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ coupling; } ;
typedef TYPE_1__ DebandContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    DebandContext *s = ctx->priv;

    static const enum AVPixelFormat pix_fmts[] = {
        165, 164, 169,
        168, 167, 166,
        149, 155, 160,
        161, 162, 150,
        128, 130, 131,
        132, 129,
        144, 140, 136,
        156, 151, 145,
        141, 137, 133,
        143, 139, 135,
        159, 154, 148,
        158, 153, 147,
        175, 177,
        170, 174,
        173, 172,
        171, 176,
        157, 152, 146,
        142, 138, 134,
        163
    };

    static const enum AVPixelFormat cpix_fmts[] = {
        149, 128,
        136, 145,
        133, 135,
        148, 147,
        146, 134,
        175, 177,
        170, 174,
        173, 172,
        171, 176,
        163
    };

    AVFilterFormats *fmts_list = ff_make_format_list(s->coupling ? cpix_fmts : pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);

    return ff_set_common_formats(ctx, fmts_list);
}
