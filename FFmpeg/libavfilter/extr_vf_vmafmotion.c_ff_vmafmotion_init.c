
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {int width; int height; int vmafdsp; int * filter; void* temp_data; void** blur_data; scalar_t__ stride; } ;
typedef TYPE_2__ VMAFMotionData ;
struct TYPE_8__ {TYPE_1__* comp; } ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_3__ AVPixFmtDescriptor ;


 int AVERROR (int ) ;
 int BIT_SHIFT ;
 int ENOMEM ;
 scalar_t__ FFALIGN (int,int) ;
 int* FILTER_5 ;
 void* av_malloc (size_t) ;
 TYPE_3__* av_pix_fmt_desc_get (int) ;
 int lrint (int) ;
 int vmafmotiondsp_init (int *,int ) ;

int ff_vmafmotion_init(VMAFMotionData *s,
                       int w, int h, enum AVPixelFormat fmt)
{
    size_t data_sz;
    int i;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(fmt);

    s->width = w;
    s->height = h;
    s->stride = FFALIGN(w * sizeof(uint16_t), 32);

    data_sz = (size_t) s->stride * h;
    if (!(s->blur_data[0] = av_malloc(data_sz)) ||
        !(s->blur_data[1] = av_malloc(data_sz)) ||
        !(s->temp_data = av_malloc(data_sz))) {
        return AVERROR(ENOMEM);
    }

    for (i = 0; i < 5; i++) {
        s->filter[i] = lrint(FILTER_5[i] * (1 << BIT_SHIFT));
    }

    vmafmotiondsp_init(&s->vmafdsp, desc->comp[0].depth);

    return 0;
}
