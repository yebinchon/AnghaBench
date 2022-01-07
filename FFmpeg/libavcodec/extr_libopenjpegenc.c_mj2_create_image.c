
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int x1; int y1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_16__ {int dx; int dy; int w; int h; scalar_t__ sgnd; int bpp; int prec; int member_0; } ;
typedef TYPE_3__ opj_image_cmptparm_t ;
struct TYPE_17__ {int subsampling_dx; int subsampling_dy; } ;
typedef TYPE_4__ opj_cparameters_t ;
struct TYPE_19__ {int pix_fmt; int width; int height; } ;
struct TYPE_18__ {int log2_chroma_w; int log2_chroma_h; int nb_components; TYPE_1__* comp; } ;
struct TYPE_14__ {int depth; } ;
typedef int OPJ_COLOR_SPACE ;
typedef TYPE_5__ AVPixFmtDescriptor ;
typedef TYPE_6__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int OPJ_CLRSPC_GRAY ;
 int OPJ_CLRSPC_SRGB ;
 int OPJ_CLRSPC_SYCC ;
 int OPJ_CLRSPC_UNKNOWN ;
 int av_get_pix_fmt_name (int) ;
 int av_log (TYPE_6__*,int ,char*,int ) ;
 TYPE_5__* av_pix_fmt_desc_get (int) ;
 TYPE_2__* opj_image_create (int,TYPE_3__*,int ) ;

__attribute__((used)) static opj_image_t *mj2_create_image(AVCodecContext *avctx, opj_cparameters_t *parameters)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(avctx->pix_fmt);
    opj_image_cmptparm_t cmptparm[4] = {{0}};
    opj_image_t *img;
    int i;
    int sub_dx[4];
    int sub_dy[4];
    int numcomps;
    OPJ_COLOR_SPACE color_space = OPJ_CLRSPC_UNKNOWN;

    sub_dx[0] = sub_dx[3] = 1;
    sub_dy[0] = sub_dy[3] = 1;
    sub_dx[1] = sub_dx[2] = 1 << desc->log2_chroma_w;
    sub_dy[1] = sub_dy[2] = 1 << desc->log2_chroma_h;

    numcomps = desc->nb_components;

    switch (avctx->pix_fmt) {
    case 168:
    case 161:
    case 172:
    case 171:
    case 170:
    case 169:
    case 162:
        color_space = OPJ_CLRSPC_GRAY;
        break;
    case 167:
    case 165:
    case 166:
    case 164:
    case 178:
    case 173:
    case 177:
    case 176:
    case 175:
    case 174:
    case 163:
        color_space = OPJ_CLRSPC_SRGB;
        break;
    case 160:
    case 159:
    case 158:
    case 152:
    case 146:
    case 145:
    case 139:
    case 135:
    case 131:
    case 153:
    case 147:
    case 140:
    case 136:
    case 132:
    case 128:
    case 157:
    case 151:
    case 144:
    case 138:
    case 134:
    case 130:
    case 156:
    case 150:
    case 143:
    case 155:
    case 149:
    case 142:
    case 154:
    case 148:
    case 141:
    case 137:
    case 133:
    case 129:
        color_space = OPJ_CLRSPC_SYCC;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR,
               "The requested pixel format '%s' is not supported\n",
               av_get_pix_fmt_name(avctx->pix_fmt));
        return ((void*)0);
    }

    for (i = 0; i < numcomps; i++) {
        cmptparm[i].prec = desc->comp[i].depth;
        cmptparm[i].bpp = desc->comp[i].depth;
        cmptparm[i].sgnd = 0;
        cmptparm[i].dx = sub_dx[i];
        cmptparm[i].dy = sub_dy[i];
        cmptparm[i].w = (avctx->width + sub_dx[i] - 1) / sub_dx[i];
        cmptparm[i].h = (avctx->height + sub_dy[i] - 1) / sub_dy[i];
    }

    img = opj_image_create(numcomps, cmptparm, color_space);

    if (!img)
        return ((void*)0);



    img->x0 = 0;
    img->y0 = 0;
    img->x1 = (avctx->width - 1) * parameters->subsampling_dx + 1;
    img->y1 = (avctx->height - 1) * parameters->subsampling_dy + 1;

    return img;
}
