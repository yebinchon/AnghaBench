
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int ** outputs; int ** inputs; TYPE_1__* priv; } ;
struct TYPE_11__ {int frames_count; int next_pts; scalar_t__ status; } ;
typedef TYPE_1__ FPSContext ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 int ff_filter_set_ready (TYPE_2__*,int) ;
 int ff_inlink_acknowledge_status (int *,scalar_t__*,int *) ;
 scalar_t__ ff_inlink_check_available_frame (int *) ;
 int ff_outlink_set_status (int *,scalar_t__,int ) ;
 int read_frame (TYPE_2__*,TYPE_1__*,int *,int *) ;
 int update_eof_pts (TYPE_2__*,TYPE_1__*,int *,int *,int ) ;
 int write_frame (TYPE_2__*,TYPE_1__*,int *,int*) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    FPSContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];

    int ret;
    int again = 0;
    int64_t status_pts;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);


    if (!s->status) {


        while (s->frames_count < 2 && ff_inlink_check_available_frame(inlink)) {
            ret = read_frame(ctx, s, inlink, outlink);
            if (ret < 0)
                return ret;
        }


        if (s->frames_count < 2) {

            ret = ff_inlink_acknowledge_status(inlink, &s->status, &status_pts);
            if (ret > 0)
                update_eof_pts(ctx, s, inlink, outlink, status_pts);

            if (!ret) {

                FF_FILTER_FORWARD_WANTED(outlink, inlink);
                return 0;
            }
        }
    }


    if (s->frames_count > 0) {
        ret = write_frame(ctx, s, outlink, &again);

        if (again)
            ff_filter_set_ready(ctx, 100);
        return ret;
    }


    if (s->status && s->frames_count == 0) {
        ff_outlink_set_status(outlink, s->status, s->next_pts);
        return 0;
    }

    return FFERROR_NOT_READY;
}
