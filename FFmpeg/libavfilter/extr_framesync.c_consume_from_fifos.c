
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {int * inputs; int * outputs; } ;
struct TYPE_8__ {unsigned int nb_in; TYPE_1__* in; TYPE_3__* parent; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ have_next; } ;
typedef TYPE_2__ FFFrameSync ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int FFERROR_NOT_READY ;
 scalar_t__ STATE_EOF ;
 int av_assert0 (int *) ;
 int ff_inlink_acknowledge_status (int ,int*,int *) ;
 int ff_inlink_consume_frame (int ,int **) ;
 int ff_inlink_request_frame (int ) ;
 int ff_outlink_frame_wanted (int ) ;
 int framesync_inject_frame (TYPE_2__*,unsigned int,int *) ;
 int framesync_inject_status (TYPE_2__*,unsigned int,int,int ) ;

__attribute__((used)) static int consume_from_fifos(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFrame *frame = ((void*)0);
    int64_t pts;
    unsigned i, nb_active, nb_miss;
    int ret, status;

    nb_active = nb_miss = 0;
    for (i = 0; i < fs->nb_in; i++) {
        if (fs->in[i].have_next || fs->in[i].state == STATE_EOF)
            continue;
        nb_active++;
        ret = ff_inlink_consume_frame(ctx->inputs[i], &frame);
        if (ret < 0)
            return ret;
        if (ret) {
            av_assert0(frame);
            framesync_inject_frame(fs, i, frame);
        } else {
            ret = ff_inlink_acknowledge_status(ctx->inputs[i], &status, &pts);
            if (ret > 0) {
                framesync_inject_status(fs, i, status, pts);
            } else if (!ret) {
                nb_miss++;
            }
        }
    }
    if (nb_miss) {
        if (nb_miss == nb_active && !ff_outlink_frame_wanted(ctx->outputs[0]))
            return FFERROR_NOT_READY;
        for (i = 0; i < fs->nb_in; i++)
            if (!fs->in[i].have_next && fs->in[i].state != STATE_EOF)
                ff_inlink_request_frame(ctx->inputs[i]);
        return 0;
    }
    return 1;
}
