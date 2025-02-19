
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int w; int h; int format; TYPE_1__* dst; } ;
struct TYPE_13__ {int nb_components; int log2_chroma_h; int log2_chroma_w; TYPE_2__* comp; } ;
struct TYPE_12__ {int depth; int* planewidth; int* planeheight; int* rdft_hbits; int* rdft_hlen; int* rdft_vbits; int* rdft_vlen; scalar_t__ eval_mode; int irdft_horizontal; int rdft_horizontal; void** weight; void** ivrdft; void** vrdft; void** rdft_vdata; void** ihrdft; void** hrdft; void** rdft_hdata; int nb_planes; } ;
struct TYPE_11__ {int depth; } ;
struct TYPE_10__ {TYPE_3__* priv; } ;
typedef int FFTSample ;
typedef TYPE_3__ FFTFILTContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 void* AV_CEIL_RSHIFT (int,int ) ;
 int DFT_R2C ;
 int ENOMEM ;
 scalar_t__ EVAL_MODE_INIT ;
 int IDFT_C2R ;
 void* av_malloc_array (int,int) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 void* av_rdft_init (int,int ) ;
 int do_eval (TYPE_3__*,TYPE_5__*,int) ;
 int irdft_horizontal16 ;
 int irdft_horizontal8 ;
 int rdft_horizontal16 ;
 int rdft_horizontal8 ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    FFTFILTContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc;
    int rdft_hbits, rdft_vbits, i, plane;

    desc = av_pix_fmt_desc_get(inlink->format);
    s->depth = desc->comp[0].depth;
    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    for (i = 0; i < desc->nb_components; i++) {
        int w = s->planewidth[i];
        int h = s->planeheight[i];


        for (rdft_hbits = 1; 1 << rdft_hbits < w*10/9; rdft_hbits++);
        s->rdft_hbits[i] = rdft_hbits;
        s->rdft_hlen[i] = 1 << rdft_hbits;
        if (!(s->rdft_hdata[i] = av_malloc_array(h, s->rdft_hlen[i] * sizeof(FFTSample))))
            return AVERROR(ENOMEM);

        if (!(s->hrdft[i] = av_rdft_init(s->rdft_hbits[i], DFT_R2C)))
            return AVERROR(ENOMEM);
        if (!(s->ihrdft[i] = av_rdft_init(s->rdft_hbits[i], IDFT_C2R)))
            return AVERROR(ENOMEM);


        for (rdft_vbits = 1; 1 << rdft_vbits < h*10/9; rdft_vbits++);
        s->rdft_vbits[i] = rdft_vbits;
        s->rdft_vlen[i] = 1 << rdft_vbits;
        if (!(s->rdft_vdata[i] = av_malloc_array(s->rdft_hlen[i], s->rdft_vlen[i] * sizeof(FFTSample))))
            return AVERROR(ENOMEM);

        if (!(s->vrdft[i] = av_rdft_init(s->rdft_vbits[i], DFT_R2C)))
            return AVERROR(ENOMEM);
        if (!(s->ivrdft[i] = av_rdft_init(s->rdft_vbits[i], IDFT_C2R)))
            return AVERROR(ENOMEM);
    }


    for (plane = 0; plane < 3; plane++) {
        if(!(s->weight[plane] = av_malloc_array(s->rdft_hlen[plane], s->rdft_vlen[plane] * sizeof(double))))
            return AVERROR(ENOMEM);

        if (s->eval_mode == EVAL_MODE_INIT)
            do_eval(s, inlink, plane);
    }

    if (s->depth <= 8) {
        s->rdft_horizontal = rdft_horizontal8;
        s->irdft_horizontal = irdft_horizontal8;
    } else if (s->depth > 8) {
        s->rdft_horizontal = rdft_horizontal16;
        s->irdft_horizontal = irdft_horizontal16;
    } else {
        return AVERROR_BUG;
    }
    return 0;
}
