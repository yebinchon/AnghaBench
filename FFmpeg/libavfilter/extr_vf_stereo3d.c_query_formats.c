
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_7__ {TYPE_1__ out; } ;
typedef TYPE_2__ Stereo3DContext ;
typedef int AVFilterFormats ;
typedef TYPE_3__ AVFilterContext ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int* anaglyph_pix_fmts ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_3__*,int *) ;
 int* other_pix_fmts ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    Stereo3DContext *s = ctx->priv;
    const enum AVPixelFormat *pix_fmts;
    AVFilterFormats *fmts_list;

    switch (s->out.format) {
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
        pix_fmts = anaglyph_pix_fmts;
        break;
    default:
        pix_fmts = other_pix_fmts;
    }

    fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
