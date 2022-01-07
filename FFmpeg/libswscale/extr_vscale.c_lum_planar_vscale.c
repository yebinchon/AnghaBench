
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int (* yuv2planarX_fn ) (int *,int,int const**,int *,int,int ,int ) ;
typedef int (* yuv2planar1_fn ) (int const*,int *,int,int ,int ) ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_14__ {int filter_size; scalar_t__ pfn; scalar_t__ isMMX; int ** filter; int * filter_pos; } ;
typedef TYPE_5__ VScalerContext ;
struct TYPE_16__ {int lumDither8; } ;
struct TYPE_15__ {TYPE_4__* dst; TYPE_2__* src; scalar_t__ alpha; TYPE_5__* instance; } ;
struct TYPE_13__ {int width; TYPE_3__* plane; } ;
struct TYPE_12__ {int sliceY; int ** line; } ;
struct TYPE_11__ {TYPE_1__* plane; } ;
struct TYPE_10__ {int sliceY; int ** line; } ;
typedef TYPE_6__ SwsFilterDescriptor ;
typedef TYPE_7__ SwsContext ;


 int FFMAX (int,int ) ;
 int stub1 (int const*,int *,int,int ,int ) ;
 int stub2 (int *,int,int const**,int *,int,int ,int ) ;
 int stub3 (int const*,int *,int,int ,int ) ;
 int stub4 (int *,int,int const**,int *,int,int ,int ) ;

__attribute__((used)) static int lum_planar_vscale(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    VScalerContext *inst = desc->instance;
    int dstW = desc->dst->width;

    int first = FFMAX(1-inst->filter_size, inst->filter_pos[sliceY]);
    int sp = first - desc->src->plane[0].sliceY;
    int dp = sliceY - desc->dst->plane[0].sliceY;
    uint8_t **src = desc->src->plane[0].line + sp;
    uint8_t **dst = desc->dst->plane[0].line + dp;
    uint16_t *filter = inst->filter[0] + (inst->isMMX ? 0 : sliceY * inst->filter_size);

    if (inst->filter_size == 1)
        ((yuv2planar1_fn)inst->pfn)((const int16_t*)src[0], dst[0], dstW, c->lumDither8, 0);
    else
        ((yuv2planarX_fn)inst->pfn)(filter, inst->filter_size, (const int16_t**)src, dst[0], dstW, c->lumDither8, 0);

    if (desc->alpha) {
        int sp = first - desc->src->plane[3].sliceY;
        int dp = sliceY - desc->dst->plane[3].sliceY;
        uint8_t **src = desc->src->plane[3].line + sp;
        uint8_t **dst = desc->dst->plane[3].line + dp;
        uint16_t *filter = inst->filter[1] + (inst->isMMX ? 0 : sliceY * inst->filter_size);

        if (inst->filter_size == 1)
            ((yuv2planar1_fn)inst->pfn)((const int16_t*)src[0], dst[0], dstW, c->lumDither8, 0);
        else
            ((yuv2planarX_fn)inst->pfn)(filter, inst->filter_size, (const int16_t**)src, dst[0], dstW, c->lumDither8, 0);
    }

    return 1;
}
