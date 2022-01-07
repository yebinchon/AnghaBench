
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
struct TYPE_15__ {int (* readAlpPlanar ) (int *,int const**,int,int *) ;int (* alpToYV12 ) (int *,int const*,int const*,int const*,int,int *) ;int input_rgb2yuv_table; int (* readLumPlanar ) (int *,int const**,int,int ) ;int (* lumToYV12 ) (int *,int const*,int const*,int const*,int,int *) ;} ;
struct TYPE_14__ {TYPE_4__* dst; scalar_t__ alpha; TYPE_2__* src; TYPE_7__* instance; } ;
struct TYPE_13__ {TYPE_3__* plane; } ;
struct TYPE_12__ {int sliceY; int sliceH; int ** line; } ;
struct TYPE_11__ {int width; int v_chr_sub_sample; TYPE_1__* plane; } ;
struct TYPE_10__ {int sliceY; int const** line; } ;
typedef TYPE_5__ SwsFilterDescriptor ;
typedef TYPE_6__ SwsContext ;
typedef TYPE_7__ ColorContext ;


 int stub1 (int *,int const*,int const*,int const*,int,int *) ;
 int stub2 (int *,int const**,int,int ) ;
 int stub3 (int *,int const*,int const*,int const*,int,int *) ;
 int stub4 (int *,int const**,int,int *) ;

__attribute__((used)) static int lum_convert(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    int srcW = desc->src->width;
    ColorContext * instance = desc->instance;
    uint32_t * pal = instance->pal;
    int i;

    desc->dst->plane[0].sliceY = sliceY;
    desc->dst->plane[0].sliceH = sliceH;
    desc->dst->plane[3].sliceY = sliceY;
    desc->dst->plane[3].sliceH = sliceH;

    for (i = 0; i < sliceH; ++i) {
        int sp0 = sliceY+i - desc->src->plane[0].sliceY;
        int sp1 = ((sliceY+i) >> desc->src->v_chr_sub_sample) - desc->src->plane[1].sliceY;
        const uint8_t * src[4] = { desc->src->plane[0].line[sp0],
                        desc->src->plane[1].line[sp1],
                        desc->src->plane[2].line[sp1],
                        desc->src->plane[3].line[sp0]};
        uint8_t * dst = desc->dst->plane[0].line[i];

        if (c->lumToYV12) {
            c->lumToYV12(dst, src[0], src[1], src[2], srcW, pal);
        } else if (c->readLumPlanar) {
            c->readLumPlanar(dst, src, srcW, c->input_rgb2yuv_table);
        }


        if (desc->alpha) {
            dst = desc->dst->plane[3].line[i];
            if (c->alpToYV12) {
                c->alpToYV12(dst, src[3], src[1], src[2], srcW, pal);
            } else if (c->readAlpPlanar) {
                c->readAlpPlanar(dst, src, srcW, ((void*)0));
            }
        }
    }

    return sliceH;
}
