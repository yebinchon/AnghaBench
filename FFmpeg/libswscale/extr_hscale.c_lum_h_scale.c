
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_20__ {int xInc; int filter_size; int filter_pos; int filter; } ;
struct TYPE_19__ {int (* hyScale ) (TYPE_6__*,int *,int,int const*,int ,int ,int ) ;int (* hyscale_fast ) (TYPE_6__*,int *,int,int *,int,int) ;int (* lumConvertRange ) (int *,int) ;} ;
struct TYPE_18__ {TYPE_4__* dst; TYPE_2__* src; scalar_t__ alpha; TYPE_7__* instance; } ;
struct TYPE_17__ {int width; TYPE_3__* plane; } ;
struct TYPE_16__ {int sliceY; int sliceH; int ** line; } ;
struct TYPE_15__ {int width; TYPE_1__* plane; } ;
struct TYPE_14__ {int sliceY; int ** line; } ;
typedef TYPE_5__ SwsFilterDescriptor ;
typedef TYPE_6__ SwsContext ;
typedef TYPE_7__ FilterContext ;


 int stub1 (TYPE_6__*,int *,int,int *,int,int) ;
 int stub2 (TYPE_6__*,int *,int,int const*,int ,int ,int ) ;
 int stub3 (int *,int) ;
 int stub4 (TYPE_6__*,int *,int,int *,int,int) ;
 int stub5 (TYPE_6__*,int *,int,int const*,int ,int ,int ) ;

__attribute__((used)) static int lum_h_scale(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    FilterContext *instance = desc->instance;
    int srcW = desc->src->width;
    int dstW = desc->dst->width;
    int xInc = instance->xInc;

    int i;
    for (i = 0; i < sliceH; ++i) {
        uint8_t ** src = desc->src->plane[0].line;
        uint8_t ** dst = desc->dst->plane[0].line;
        int src_pos = sliceY+i - desc->src->plane[0].sliceY;
        int dst_pos = sliceY+i - desc->dst->plane[0].sliceY;


        if (c->hyscale_fast) {
            c->hyscale_fast(c, (int16_t*)dst[dst_pos], dstW, src[src_pos], srcW, xInc);
        } else {
            c->hyScale(c, (int16_t*)dst[dst_pos], dstW, (const uint8_t *)src[src_pos], instance->filter,
                       instance->filter_pos, instance->filter_size);
        }

        if (c->lumConvertRange)
            c->lumConvertRange((int16_t*)dst[dst_pos], dstW);

        desc->dst->plane[0].sliceH += 1;

        if (desc->alpha) {
            src = desc->src->plane[3].line;
            dst = desc->dst->plane[3].line;

            src_pos = sliceY+i - desc->src->plane[3].sliceY;
            dst_pos = sliceY+i - desc->dst->plane[3].sliceY;

            desc->dst->plane[3].sliceH += 1;

            if (c->hyscale_fast) {
                c->hyscale_fast(c, (int16_t*)dst[dst_pos], dstW, src[src_pos], srcW, xInc);
            } else {
                c->hyScale(c, (int16_t*)dst[dst_pos], dstW, (const uint8_t *)src[src_pos], instance->filter,
                            instance->filter_pos, instance->filter_size);
            }
        }
    }

    return sliceH;
}
