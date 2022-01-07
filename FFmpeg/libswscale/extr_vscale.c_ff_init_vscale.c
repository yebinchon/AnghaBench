
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VScalerContext ;
struct TYPE_7__ {int use_mmx_vfilter; int yuv2anyX; scalar_t__ yuv2packedX; int yuv2packed2; int yuv2packed1; int yuv2nv12cX; int yuv2planeX; int yuv2plane1; int needAlpha; int dstFormat; } ;
struct TYPE_6__ {int alpha; int * dst; int * src; int * instance; int process; } ;
typedef int SwsSlice ;
typedef TYPE_1__ SwsFilterDescriptor ;
typedef TYPE_2__ SwsContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int any_vscale ;
 int * av_mallocz (int) ;
 int * av_mallocz_array (int,int) ;
 int chr_planar_vscale ;
 int ff_init_vscale_pfn (TYPE_2__*,int ,int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int isALPHA (int ) ;
 scalar_t__ isGray (int ) ;
 scalar_t__ isPlanarYUV (int ) ;
 int lum_planar_vscale ;
 int packed_vscale ;

int ff_init_vscale(SwsContext *c, SwsFilterDescriptor *desc, SwsSlice *src, SwsSlice *dst)
{
    VScalerContext *lumCtx = ((void*)0);
    VScalerContext *chrCtx = ((void*)0);

    if (isPlanarYUV(c->dstFormat) || (isGray(c->dstFormat) && !isALPHA(c->dstFormat))) {
        lumCtx = av_mallocz(sizeof(VScalerContext));
        if (!lumCtx)
            return AVERROR(ENOMEM);


        desc[0].process = lum_planar_vscale;
        desc[0].instance = lumCtx;
        desc[0].src = src;
        desc[0].dst = dst;
        desc[0].alpha = c->needAlpha;

        if (!isGray(c->dstFormat)) {
            chrCtx = av_mallocz(sizeof(VScalerContext));
            if (!chrCtx)
                return AVERROR(ENOMEM);
            desc[1].process = chr_planar_vscale;
            desc[1].instance = chrCtx;
            desc[1].src = src;
            desc[1].dst = dst;
        }
    } else {
        lumCtx = av_mallocz_array(sizeof(VScalerContext), 2);
        if (!lumCtx)
            return AVERROR(ENOMEM);
        chrCtx = &lumCtx[1];

        desc[0].process = c->yuv2packedX ? packed_vscale : any_vscale;
        desc[0].instance = lumCtx;
        desc[0].src = src;
        desc[0].dst = dst;
        desc[0].alpha = c->needAlpha;
    }

    ff_init_vscale_pfn(c, c->yuv2plane1, c->yuv2planeX, c->yuv2nv12cX,
        c->yuv2packed1, c->yuv2packed2, c->yuv2packedX, c->yuv2anyX, c->use_mmx_vfilter);
    return 0;
}
