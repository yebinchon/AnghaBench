
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef void* int64_t ;
typedef int buffer ;
struct TYPE_30__ {char* name; int nb_inputs; int nb_outputs; TYPE_7__** outputs; TYPE_7__** inputs; TYPE_2__* filter; TYPE_1__* graph; TYPE_5__* priv; } ;
struct TYPE_29__ {TYPE_4__* dst; TYPE_3__* src; int h; int w; } ;
struct TYPE_28__ {void* pts; } ;
struct TYPE_27__ {void* pts; int white; scalar_t__ mode; } ;
struct TYPE_26__ {char* name; } ;
struct TYPE_25__ {char* name; } ;
struct TYPE_24__ {char* name; } ;
struct TYPE_23__ {int nb_filters; TYPE_8__** filters; } ;
typedef TYPE_5__ GraphMonitorContext ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int clear_image (TYPE_5__*,TYPE_6__*,TYPE_7__*) ;
 int draw_items (TYPE_8__*,TYPE_6__*,int,int,TYPE_7__*,size_t) ;
 int drawtext (TYPE_6__*,int,int,char*,int ) ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 TYPE_6__* ff_get_video_buffer (TYPE_7__*,int ,int ) ;
 size_t ff_inlink_queued_frames (TYPE_7__*) ;
 int filter_have_queued (TYPE_8__*) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int create_frame(AVFilterContext *ctx, int64_t pts)
{
    GraphMonitorContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int xpos, ypos = 0;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out)
        return AVERROR(ENOMEM);

    clear_image(s, out, outlink);

    for (int i = 0; i < ctx->graph->nb_filters; i++) {
        AVFilterContext *filter = ctx->graph->filters[i];
        char buffer[1024] = { 0 };

        if (s->mode && !filter_have_queued(filter))
            continue;

        xpos = 0;
        drawtext(out, xpos, ypos, filter->name, s->white);
        xpos += strlen(filter->name) * 8 + 10;
        drawtext(out, xpos, ypos, filter->filter->name, s->white);
        ypos += 10;
        for (int j = 0; j < filter->nb_inputs; j++) {
            AVFilterLink *l = filter->inputs[j];
            size_t frames = ff_inlink_queued_frames(l);

            if (s->mode && !frames)
                continue;

            xpos = 10;
            snprintf(buffer, sizeof(buffer)-1, "in%d: ", j);
            drawtext(out, xpos, ypos, buffer, s->white);
            xpos += strlen(buffer) * 8;
            drawtext(out, xpos, ypos, l->src->name, s->white);
            xpos += strlen(l->src->name) * 8 + 10;
            draw_items(ctx, out, xpos, ypos, l, frames);
            ypos += 10;
        }

        ypos += 2;
        for (int j = 0; j < filter->nb_outputs; j++) {
            AVFilterLink *l = filter->outputs[j];
            size_t frames = ff_inlink_queued_frames(l);

            if (s->mode && !frames)
                continue;

            xpos = 10;
            snprintf(buffer, sizeof(buffer)-1, "out%d: ", j);
            drawtext(out, xpos, ypos, buffer, s->white);
            xpos += strlen(buffer) * 8;
            drawtext(out, xpos, ypos, l->dst->name, s->white);
            xpos += strlen(l->dst->name) * 8 + 10;
            draw_items(ctx, out, xpos, ypos, l, frames);
            ypos += 10;
        }
        ypos += 5;
    }

    out->pts = pts;
    s->pts = pts;
    return ff_filter_frame(outlink, out);
}
