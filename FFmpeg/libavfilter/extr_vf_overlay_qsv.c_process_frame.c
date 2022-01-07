
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nb_inputs; int * inputs; } ;
struct TYPE_7__ {TYPE_1__* opaque; TYPE_3__* parent; } ;
struct TYPE_6__ {int qsv; } ;
typedef TYPE_1__ QSVOverlayContext ;
typedef TYPE_2__ FFFrameSync ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EAGAIN ;
 int ff_framesync_get_frame (TYPE_2__*,int,int **,int ) ;
 int ff_qsvvpp_filter_frame (int ,int ,int *) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    QSVOverlayContext *s = fs->opaque;
    AVFrame *frame = ((void*)0);
    int ret = 0, i;

    for (i = 0; i < ctx->nb_inputs; i++) {
        ret = ff_framesync_get_frame(fs, i, &frame, 0);
        if (ret == 0)
            ret = ff_qsvvpp_filter_frame(s->qsv, ctx->inputs[i], frame);
        if (ret < 0 && ret != AVERROR(EAGAIN))
            break;
    }

    return ret;
}
