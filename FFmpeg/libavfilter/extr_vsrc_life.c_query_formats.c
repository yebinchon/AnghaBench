
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int draw; int death_color; int life_color; scalar_t__ mold; } ;
typedef TYPE_1__ LifeContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AV_PIX_FMT_MONOBLACK ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_RGB24 ;
 int * ff_make_format_list (int*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;
 int fill_picture_monoblack ;
 int fill_picture_rgb ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    LifeContext *life = ctx->priv;
    enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_NONE, AV_PIX_FMT_NONE };
    AVFilterFormats *fmts_list;

    if (life->mold || memcmp(life-> life_color, "\xff\xff\xff", 3)
                   || memcmp(life->death_color, "\x00\x00\x00", 3)) {
        pix_fmts[0] = AV_PIX_FMT_RGB24;
        life->draw = fill_picture_rgb;
    } else {
        pix_fmts[0] = AV_PIX_FMT_MONOBLACK;
        life->draw = fill_picture_monoblack;
    }

    fmts_list = ff_make_format_list(pix_fmts);
    return ff_set_common_formats(ctx, fmts_list);
}
