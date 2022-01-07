
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int param4; int param3; int param2; int param1; int type; } ;
typedef TYPE_1__ SmoothContext ;
typedef TYPE_2__ OCVContext ;
typedef int IplImage ;
typedef TYPE_3__ AVFilterContext ;


 int cvSmooth (int *,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void smooth_end_frame_filter(AVFilterContext *ctx, IplImage *inimg, IplImage *outimg)
{
    OCVContext *s = ctx->priv;
    SmoothContext *smooth = s->priv;
    cvSmooth(inimg, outimg, smooth->type, smooth->param1, smooth->param2, smooth->param3, smooth->param4);
}
