
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum perm { ____Placeholder_perm } perm ;
struct TYPE_8__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {int mode; int lfg; } ;
typedef TYPE_1__ PermsContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_VERBOSE ;
 int ENOMEM ;




 int RO ;
 int RW ;
 int * av_frame_clone (int *) ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_is_writable (int *) ;
 int av_frame_make_writable (int *) ;
 int av_lfg_get (int *) ;
 int av_log (TYPE_3__*,int ,char*,int ,int ,char*) ;
 int ff_filter_frame (int ,int *) ;
 int * perm_str ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    int ret;
    AVFilterContext *ctx = inlink->dst;
    PermsContext *s = ctx->priv;
    AVFrame *out = frame;
    enum perm in_perm = av_frame_is_writable(frame) ? RW : RO;
    enum perm out_perm;

    switch (s->mode) {
    case 128: out_perm = in_perm == RO ? RW : RO; break;
    case 131: out_perm = av_lfg_get(&s->lfg) & 1 ? RW : RO; break;
    case 130: out_perm = RO; break;
    case 129: out_perm = RW; break;
    default: out_perm = in_perm; break;
    }

    av_log(ctx, AV_LOG_VERBOSE, "%s -> %s%s\n",
           perm_str[in_perm], perm_str[out_perm],
           in_perm == out_perm ? " (no-op)" : "");

    if (in_perm == RO && out_perm == RW) {
        if ((ret = av_frame_make_writable(frame)) < 0)
            return ret;
    } else if (in_perm == RW && out_perm == RO) {
        out = av_frame_clone(frame);
        if (!out)
            return AVERROR(ENOMEM);
    }

    ret = ff_filter_frame(ctx->outputs[0], out);

    if (in_perm == RW && out_perm == RO)
        av_frame_free(&frame);
    return ret;
}
