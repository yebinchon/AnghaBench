
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_19__ {int xInc; int filter_size; int filter_pos; int filter; } ;
struct TYPE_18__ {int (* chrConvertRange ) (int *,int *,int) ;int (* hcScale ) (TYPE_6__*,int *,int,int *,int ,int ,int ) ;int (* hcscale_fast ) (TYPE_6__*,int *,int *,int,int *,int *,int,int) ;} ;
struct TYPE_17__ {TYPE_4__* dst; TYPE_2__* src; TYPE_7__* instance; } ;
struct TYPE_16__ {TYPE_3__* plane; int h_chr_sub_sample; int width; } ;
struct TYPE_15__ {int sliceY; int sliceH; int ** line; } ;
struct TYPE_14__ {TYPE_1__* plane; int h_chr_sub_sample; int width; } ;
struct TYPE_13__ {int sliceY; int ** line; } ;
typedef TYPE_5__ SwsFilterDescriptor ;
typedef TYPE_6__ SwsContext ;
typedef TYPE_7__ FilterContext ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int stub1 (TYPE_6__*,int *,int *,int,int *,int *,int,int) ;
 int stub2 (TYPE_6__*,int *,int,int *,int ,int ,int ) ;
 int stub3 (TYPE_6__*,int *,int,int *,int ,int ,int ) ;
 int stub4 (int *,int *,int) ;

__attribute__((used)) static int chr_h_scale(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    FilterContext *instance = desc->instance;
    int srcW = AV_CEIL_RSHIFT(desc->src->width, desc->src->h_chr_sub_sample);
    int dstW = AV_CEIL_RSHIFT(desc->dst->width, desc->dst->h_chr_sub_sample);
    int xInc = instance->xInc;

    uint8_t ** src1 = desc->src->plane[1].line;
    uint8_t ** dst1 = desc->dst->plane[1].line;
    uint8_t ** src2 = desc->src->plane[2].line;
    uint8_t ** dst2 = desc->dst->plane[2].line;

    int src_pos1 = sliceY - desc->src->plane[1].sliceY;
    int dst_pos1 = sliceY - desc->dst->plane[1].sliceY;

    int src_pos2 = sliceY - desc->src->plane[2].sliceY;
    int dst_pos2 = sliceY - desc->dst->plane[2].sliceY;

    int i;
    for (i = 0; i < sliceH; ++i) {
        if (c->hcscale_fast) {
            c->hcscale_fast(c, (uint16_t*)dst1[dst_pos1+i], (uint16_t*)dst2[dst_pos2+i], dstW, src1[src_pos1+i], src2[src_pos2+i], srcW, xInc);
        } else {
            c->hcScale(c, (uint16_t*)dst1[dst_pos1+i], dstW, src1[src_pos1+i], instance->filter, instance->filter_pos, instance->filter_size);
            c->hcScale(c, (uint16_t*)dst2[dst_pos2+i], dstW, src2[src_pos2+i], instance->filter, instance->filter_pos, instance->filter_size);
        }

        if (c->chrConvertRange)
            c->chrConvertRange((uint16_t*)dst1[dst_pos1+i], (uint16_t*)dst2[dst_pos2+i], dstW);

        desc->dst->plane[1].sliceH += 1;
        desc->dst->plane[2].sliceH += 1;
    }
    return sliceH;
}
