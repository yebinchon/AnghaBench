
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int nb_iterations; int kernel; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_1__ OCVContext ;
typedef int IplImage ;
typedef TYPE_2__ DilateContext ;
typedef TYPE_3__ AVFilterContext ;


 int cvDilate (int *,int *,int ,int ) ;

__attribute__((used)) static void dilate_end_frame_filter(AVFilterContext *ctx, IplImage *inimg, IplImage *outimg)
{
    OCVContext *s = ctx->priv;
    DilateContext *dilate = s->priv;
    cvDilate(inimg, outimg, dilate->kernel, dilate->nb_iterations);
}
