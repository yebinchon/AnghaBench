
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {TYPE_2__* priv; } ;
struct TYPE_15__ {int w; int h; int format; TYPE_5__* dst; } ;
struct TYPE_14__ {int flags; int nb_components; TYPE_1__* comp; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_13__ {int* var_values; int is_16bit; int is_yuv; int is_rgb; int is_planar; int step; int* comp_expr_str; int** lut; int ** comp_expr; int vsub; int hsub; } ;
struct TYPE_12__ {int depth; } ;
typedef TYPE_2__ LutContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 size_t A ;
 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (int*) ;
 size_t U ;
 size_t V ;
 size_t VAR_CLIPVAL ;
 size_t VAR_H ;
 size_t VAR_MAXVAL ;
 size_t VAR_MINVAL ;
 size_t VAR_NEGVAL ;
 size_t VAR_VAL ;
 size_t VAR_W ;
 size_t Y ;
 void* av_clip (int,int,int) ;
 double av_expr_eval (int *,int*,TYPE_2__*) ;
 int av_expr_free (int *) ;
 int av_expr_parse (int **,int,int ,int ,int ,int *,int *,int ,TYPE_5__*) ;
 int av_get_bits_per_pixel (TYPE_3__ const*) ;
 int av_log (TYPE_5__*,int ,char*,int,int,int) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_fill_rgba_map (int*,int ) ;
 scalar_t__ ff_fmt_is_in (int ,int ) ;
 int funcs1 ;
 int funcs1_names ;
 scalar_t__ isnan (double) ;
 int rgb_pix_fmts ;
 int var_names ;
 int yuv_pix_fmts ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    LutContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    uint8_t rgba_map[4];
    int min[4], max[4];
    int val, color, ret;

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;

    s->var_values[VAR_W] = inlink->w;
    s->var_values[VAR_H] = inlink->h;
    s->is_16bit = desc->comp[0].depth > 8;

    switch (inlink->format) {
    case 162:
    case 161:
    case 160:
    case 154:
    case 148:
    case 145:
    case 139:
    case 135:
    case 131:
    case 155:
    case 149:
    case 140:
    case 136:
    case 132:
    case 128:
    case 159:
    case 153:
    case 147:
    case 144:
    case 138:
    case 134:
    case 130:
    case 158:
    case 152:
    case 146:
    case 143:
    case 157:
    case 151:
    case 142:
    case 156:
    case 150:
    case 141:
    case 137:
    case 133:
    case 129:
        min[Y] = 16 * (1 << (desc->comp[0].depth - 8));
        min[U] = 16 * (1 << (desc->comp[1].depth - 8));
        min[V] = 16 * (1 << (desc->comp[2].depth - 8));
        min[A] = 0;
        max[Y] = 235 * (1 << (desc->comp[0].depth - 8));
        max[U] = 240 * (1 << (desc->comp[1].depth - 8));
        max[V] = 240 * (1 << (desc->comp[2].depth - 8));
        max[A] = (1 << desc->comp[0].depth) - 1;
        break;
    case 164:
    case 163:
        min[0] = min[1] = min[2] = min[3] = 0;
        max[0] = max[1] = max[2] = max[3] = 65535;
        break;
    default:
        min[0] = min[1] = min[2] = min[3] = 0;
        max[0] = max[1] = max[2] = max[3] = 255 * (1 << (desc->comp[0].depth - 8));
    }

    s->is_yuv = s->is_rgb = 0;
    s->is_planar = desc->flags & AV_PIX_FMT_FLAG_PLANAR;
    if (ff_fmt_is_in(inlink->format, yuv_pix_fmts)) s->is_yuv = 1;
    else if (ff_fmt_is_in(inlink->format, rgb_pix_fmts)) s->is_rgb = 1;

    if (s->is_rgb) {
        ff_fill_rgba_map(rgba_map, inlink->format);
        s->step = av_get_bits_per_pixel(desc) >> 3;
        if (s->is_16bit) {
            s->step = s->step >> 1;
        }
    }

    for (color = 0; color < desc->nb_components; color++) {
        double res;
        int comp = s->is_rgb ? rgba_map[color] : color;


        av_expr_free(s->comp_expr[color]);
        s->comp_expr[color] = ((void*)0);
        ret = av_expr_parse(&s->comp_expr[color], s->comp_expr_str[color],
                            var_names, funcs1_names, funcs1, ((void*)0), ((void*)0), 0, ctx);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR,
                   "Error when parsing the expression '%s' for the component %d and color %d.\n",
                   s->comp_expr_str[comp], comp, color);
            return AVERROR(EINVAL);
        }


        s->var_values[VAR_MAXVAL] = max[color];
        s->var_values[VAR_MINVAL] = min[color];

        for (val = 0; val < FF_ARRAY_ELEMS(s->lut[comp]); val++) {
            s->var_values[VAR_VAL] = val;
            s->var_values[VAR_CLIPVAL] = av_clip(val, min[color], max[color]);
            s->var_values[VAR_NEGVAL] =
                av_clip(min[color] + max[color] - s->var_values[VAR_VAL],
                        min[color], max[color]);

            res = av_expr_eval(s->comp_expr[color], s->var_values, s);
            if (isnan(res)) {
                av_log(ctx, AV_LOG_ERROR,
                       "Error when evaluating the expression '%s' for the value %d for the component %d.\n",
                       s->comp_expr_str[color], val, comp);
                return AVERROR(EINVAL);
            }
            s->lut[comp][val] = av_clip((int)res, 0, max[A]);
            av_log(ctx, AV_LOG_DEBUG, "val[%d][%d] = %d\n", comp, val, s->lut[comp][val]);
        }
    }

    return 0;
}
