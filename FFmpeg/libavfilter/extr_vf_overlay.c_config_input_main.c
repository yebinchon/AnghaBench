
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int format; TYPE_1__* dst; } ;
struct TYPE_11__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_10__ {int main_is_packed_rgb; int format; int main_has_alpha; int alpha_format; void* blend_slice; int main_rgba_map; TYPE_3__ const* main_desc; int vsub; int hsub; int main_pix_step; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
typedef TYPE_2__ OverlayContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 scalar_t__ ARCH_X86 ;
 int alpha_pix_fmts ;
 int av_assert0 (int ) ;
 int av_image_fill_max_pixsteps (int ,int *,TYPE_3__ const*) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 void* blend_slice_gbrap ;
 void* blend_slice_gbrap_pm ;
 void* blend_slice_gbrp ;
 void* blend_slice_gbrp_pm ;
 void* blend_slice_rgb ;
 void* blend_slice_rgb_pm ;
 void* blend_slice_rgba ;
 void* blend_slice_rgba_pm ;
 void* blend_slice_yuv420 ;
 void* blend_slice_yuv420_pm ;
 void* blend_slice_yuv422 ;
 void* blend_slice_yuv422_pm ;
 void* blend_slice_yuv444 ;
 void* blend_slice_yuv444_pm ;
 void* blend_slice_yuva420 ;
 void* blend_slice_yuva420_pm ;
 void* blend_slice_yuva422 ;
 void* blend_slice_yuva422_pm ;
 void* blend_slice_yuva444 ;
 void* blend_slice_yuva444_pm ;
 scalar_t__ ff_fill_rgba_map (int ,int ) ;
 int ff_fmt_is_in (int ,int ) ;
 int ff_overlay_init_x86 (TYPE_2__*,int,int ,int ,int ) ;

__attribute__((used)) static int config_input_main(AVFilterLink *inlink)
{
    OverlayContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);

    av_image_fill_max_pixsteps(s->main_pix_step, ((void*)0), pix_desc);

    s->hsub = pix_desc->log2_chroma_w;
    s->vsub = pix_desc->log2_chroma_h;

    s->main_desc = pix_desc;

    s->main_is_packed_rgb =
        ff_fill_rgba_map(s->main_rgba_map, inlink->format) >= 0;
    s->main_has_alpha = ff_fmt_is_in(inlink->format, alpha_pix_fmts);
    switch (s->format) {
    case 130:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva420 : blend_slice_yuv420;
        break;
    case 129:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva422 : blend_slice_yuv422;
        break;
    case 128:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva444 : blend_slice_yuv444;
        break;
    case 131:
        s->blend_slice = s->main_has_alpha ? blend_slice_rgba : blend_slice_rgb;
        break;
    case 132:
        s->blend_slice = s->main_has_alpha ? blend_slice_gbrap : blend_slice_gbrp;
        break;
    case 133:
        switch (inlink->format) {
        case 136:
            s->blend_slice = blend_slice_yuva420;
            break;
        case 135:
            s->blend_slice = blend_slice_yuva422;
            break;
        case 134:
            s->blend_slice = blend_slice_yuva444;
            break;
        case 140:
        case 137:
        case 139:
        case 141:
            s->blend_slice = blend_slice_rgba;
            break;
        case 138:
            s->blend_slice = blend_slice_gbrap;
            break;
        default:
            av_assert0(0);
            break;
        }
        break;
    }

    if (!s->alpha_format)
        goto end;

    switch (s->format) {
    case 130:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva420_pm : blend_slice_yuv420_pm;
        break;
    case 129:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva422_pm : blend_slice_yuv422_pm;
        break;
    case 128:
        s->blend_slice = s->main_has_alpha ? blend_slice_yuva444_pm : blend_slice_yuv444_pm;
        break;
    case 131:
        s->blend_slice = s->main_has_alpha ? blend_slice_rgba_pm : blend_slice_rgb_pm;
        break;
    case 132:
        s->blend_slice = s->main_has_alpha ? blend_slice_gbrap_pm : blend_slice_gbrp_pm;
        break;
    case 133:
        switch (inlink->format) {
        case 136:
            s->blend_slice = blend_slice_yuva420_pm;
            break;
        case 135:
            s->blend_slice = blend_slice_yuva422_pm;
            break;
        case 134:
            s->blend_slice = blend_slice_yuva444_pm;
            break;
        case 140:
        case 137:
        case 139:
        case 141:
            s->blend_slice = blend_slice_rgba_pm;
            break;
        case 138:
            s->blend_slice = blend_slice_gbrap_pm;
            break;
        default:
            av_assert0(0);
            break;
        }
        break;
    }

end:
    if (ARCH_X86)
        ff_overlay_init_x86(s, s->format, inlink->format,
                            s->alpha_format, s->main_has_alpha);

    return 0;
}
