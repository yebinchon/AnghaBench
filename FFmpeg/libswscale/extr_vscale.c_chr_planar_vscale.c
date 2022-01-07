
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int (* yuv2planarX_fn ) (int *,int,int const**,int *,int,int ,int) ;
typedef int (* yuv2planar1_fn ) (int const*,int *,int,int ,int) ;
typedef int (* yuv2interleavedX_fn ) (TYPE_5__*,int *,int,int const**,int const**,int *,int) ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_17__ {int filter_size; scalar_t__ isMMX; scalar_t__ pfn; int ** filter; int * filter_pos; } ;
typedef TYPE_6__ VScalerContext ;
struct TYPE_18__ {TYPE_4__* dst; TYPE_2__* src; TYPE_6__* instance; } ;
struct TYPE_16__ {int uv_offx2; int chrDither8; scalar_t__ yuv2nv12cX; } ;
struct TYPE_15__ {int v_chr_sub_sample; TYPE_3__* plane; int h_chr_sub_sample; int width; } ;
struct TYPE_14__ {int sliceY; int ** line; } ;
struct TYPE_13__ {TYPE_1__* plane; } ;
struct TYPE_12__ {int sliceY; int ** line; } ;
typedef TYPE_7__ SwsFilterDescriptor ;
typedef TYPE_5__ SwsContext ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int FFMAX (int,int ) ;
 int stub1 (TYPE_5__*,int *,int,int const**,int const**,int *,int) ;
 int stub2 (int const*,int *,int,int ,int) ;
 int stub3 (int const*,int *,int,int ,int) ;
 int stub4 (int *,int,int const**,int *,int,int ,int) ;
 int stub5 (int *,int,int const**,int *,int,int ,int) ;

__attribute__((used)) static int chr_planar_vscale(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    const int chrSkipMask = (1 << desc->dst->v_chr_sub_sample) - 1;
    if (sliceY & chrSkipMask)
        return 0;
    else {
        VScalerContext *inst = desc->instance;
        int dstW = AV_CEIL_RSHIFT(desc->dst->width, desc->dst->h_chr_sub_sample);
        int chrSliceY = sliceY >> desc->dst->v_chr_sub_sample;

        int first = FFMAX(1-inst->filter_size, inst->filter_pos[chrSliceY]);
        int sp1 = first - desc->src->plane[1].sliceY;
        int sp2 = first - desc->src->plane[2].sliceY;
        int dp1 = chrSliceY - desc->dst->plane[1].sliceY;
        int dp2 = chrSliceY - desc->dst->plane[2].sliceY;
        uint8_t **src1 = desc->src->plane[1].line + sp1;
        uint8_t **src2 = desc->src->plane[2].line + sp2;
        uint8_t **dst1 = desc->dst->plane[1].line + dp1;
        uint8_t **dst2 = desc->dst->plane[2].line + dp2;
        uint16_t *filter = inst->filter[0] + (inst->isMMX ? 0 : chrSliceY * inst->filter_size);

        if (c->yuv2nv12cX) {
            ((yuv2interleavedX_fn)inst->pfn)(c, filter, inst->filter_size, (const int16_t**)src1, (const int16_t**)src2, dst1[0], dstW);
        } else if (inst->filter_size == 1) {
            ((yuv2planar1_fn)inst->pfn)((const int16_t*)src1[0], dst1[0], dstW, c->chrDither8, 0);
            ((yuv2planar1_fn)inst->pfn)((const int16_t*)src2[0], dst2[0], dstW, c->chrDither8, 3);
        } else {
            ((yuv2planarX_fn)inst->pfn)(filter, inst->filter_size, (const int16_t**)src1, dst1[0], dstW, c->chrDither8, 0);
            ((yuv2planarX_fn)inst->pfn)(filter, inst->filter_size, (const int16_t**)src2, dst2[0], dstW, c->chrDither8, inst->isMMX ? (c->uv_offx2 >> 1) : 3);
        }
    }

    return 1;
}
