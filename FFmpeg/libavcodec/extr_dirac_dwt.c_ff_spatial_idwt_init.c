
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum dwt_type { ____Placeholder_dwt_type } dwt_type ;
struct TYPE_10__ {int decomposition_count; int temp; int stride; int height; int width; int buffer; } ;
struct TYPE_9__ {int tmp; int stride; int height; int width; int buf; } ;
typedef TYPE_1__ DWTPlane ;
typedef TYPE_2__ DWTContext ;


 scalar_t__ ARCH_X86 ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*,int) ;
 int ff_spatial_idwt_init_10bit (TYPE_2__*,int) ;
 int ff_spatial_idwt_init_12bit (TYPE_2__*,int) ;
 int ff_spatial_idwt_init_8bit (TYPE_2__*,int) ;
 int ff_spatial_idwt_init_x86 (TYPE_2__*,int) ;

int ff_spatial_idwt_init(DWTContext *d, DWTPlane *p, enum dwt_type type,
                         int decomposition_count, int bit_depth)
{
    int ret = 0;

    d->buffer = p->buf;
    d->width = p->width;
    d->height = p->height;
    d->stride = p->stride;
    d->temp = p->tmp;
    d->decomposition_count = decomposition_count;

    if (bit_depth == 8)
        ret = ff_spatial_idwt_init_8bit(d, type);
    else if (bit_depth == 10)
        ret = ff_spatial_idwt_init_10bit(d, type);
    else if (bit_depth == 12)
        ret = ff_spatial_idwt_init_12bit(d, type);
    else
        av_log(((void*)0), AV_LOG_WARNING, "Unsupported bit depth = %i\n", bit_depth);

    if (ret) {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown wavelet type %d\n", type);
        return AVERROR_INVALIDDATA;
    }

    if (ARCH_X86 && bit_depth == 8)
        ff_spatial_idwt_init_x86(d, type);
    return 0;
}
