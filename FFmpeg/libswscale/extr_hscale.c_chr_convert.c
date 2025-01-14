
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


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int * pal; } ;
struct TYPE_15__ {int input_rgb2yuv_table; int (* readChrPlanar ) (int *,int *,int const**,int,int ) ;int (* chrToYV12 ) (int *,int *,int const*,int const*,int const*,int,int *) ;} ;
struct TYPE_14__ {TYPE_4__* dst; TYPE_2__* src; TYPE_7__* instance; } ;
struct TYPE_13__ {TYPE_3__* plane; } ;
struct TYPE_12__ {int sliceY; int sliceH; int ** line; } ;
struct TYPE_11__ {int v_chr_sub_sample; TYPE_1__* plane; int h_chr_sub_sample; int width; } ;
struct TYPE_10__ {int sliceY; int const** line; } ;
typedef TYPE_5__ SwsFilterDescriptor ;
typedef TYPE_6__ SwsContext ;
typedef TYPE_7__ ColorContext ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int stub1 (int *,int *,int const*,int const*,int const*,int,int *) ;
 int stub2 (int *,int *,int const**,int,int ) ;

__attribute__((used)) static int chr_convert(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    int srcW = AV_CEIL_RSHIFT(desc->src->width, desc->src->h_chr_sub_sample);
    ColorContext * instance = desc->instance;
    uint32_t * pal = instance->pal;

    int sp0 = (sliceY - (desc->src->plane[0].sliceY >> desc->src->v_chr_sub_sample)) << desc->src->v_chr_sub_sample;
    int sp1 = sliceY - desc->src->plane[1].sliceY;

    int i;

    desc->dst->plane[1].sliceY = sliceY;
    desc->dst->plane[1].sliceH = sliceH;
    desc->dst->plane[2].sliceY = sliceY;
    desc->dst->plane[2].sliceH = sliceH;

    for (i = 0; i < sliceH; ++i) {
        const uint8_t * src[4] = { desc->src->plane[0].line[sp0+i],
                        desc->src->plane[1].line[sp1+i],
                        desc->src->plane[2].line[sp1+i],
                        desc->src->plane[3].line[sp0+i]};

        uint8_t * dst1 = desc->dst->plane[1].line[i];
        uint8_t * dst2 = desc->dst->plane[2].line[i];
        if (c->chrToYV12) {
            c->chrToYV12(dst1, dst2, src[0], src[1], src[2], srcW, pal);
        } else if (c->readChrPlanar) {
            c->readChrPlanar(dst1, dst2, src, srcW, c->input_rgb2yuv_table);
        }
    }
    return sliceH;
}
