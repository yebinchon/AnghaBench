
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int planes; } ;
struct TYPE_21__ {TYPE_2__ fi; } ;
typedef TYPE_3__ VSMotionDetect ;
struct TYPE_22__ {int * linesize; int * data; } ;
typedef TYPE_4__ VSFrame ;
struct TYPE_26__ {TYPE_7__** outputs; TYPE_5__* priv; } ;
struct TYPE_25__ {TYPE_8__* dst; } ;
struct TYPE_24__ {int * linesize; int * data; } ;
struct TYPE_19__ {scalar_t__ show; } ;
struct TYPE_23__ {int f; TYPE_1__ conf; TYPE_3__ md; } ;
typedef TYPE_5__ StabData ;
typedef int LocalMotions ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 scalar_t__ VS_OK ;
 int av_frame_is_writable (TYPE_6__*) ;
 int av_frame_make_writable (TYPE_6__*) ;
 int av_log (TYPE_8__*,int ,char*) ;
 int errno ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 scalar_t__ vsMotionDetection (TYPE_3__*,int *,TYPE_4__*) ;
 scalar_t__ vsWriteToFile (TYPE_3__*,int ,int *) ;
 int vs_vector_del (int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    StabData *s = ctx->priv;
    VSMotionDetect *md = &(s->md);
    LocalMotions localmotions;

    AVFilterLink *outlink = inlink->dst->outputs[0];
    VSFrame frame;
    int plane;

    if (s->conf.show > 0 && !av_frame_is_writable(in))
        av_frame_make_writable(in);

    for (plane = 0; plane < md->fi.planes; plane++) {
        frame.data[plane] = in->data[plane];
        frame.linesize[plane] = in->linesize[plane];
    }
    if (vsMotionDetection(md, &localmotions, &frame) != VS_OK) {
        av_log(ctx, AV_LOG_ERROR, "motion detection failed");
        return AVERROR(AVERROR_EXTERNAL);
    } else {
        if (vsWriteToFile(md, s->f, &localmotions) != VS_OK) {
            int ret = AVERROR(errno);
            av_log(ctx, AV_LOG_ERROR, "cannot write to transform file");
            return ret;
        }
        vs_vector_del(&localmotions);
    }

    return ff_filter_frame(outlink, in);
}
