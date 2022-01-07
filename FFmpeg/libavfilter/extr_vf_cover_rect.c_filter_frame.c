
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {int value; } ;
struct TYPE_20__ {int * outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {TYPE_5__* dst; } ;
struct TYPE_18__ {int width; int height; int metadata; } ;
struct TYPE_17__ {int width; int height; scalar_t__ mode; TYPE_1__* cover_frame; } ;
struct TYPE_16__ {int width; int height; } ;
typedef TYPE_2__ CoverContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;
typedef TYPE_6__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 int AV_DICT_MATCH_CASE ;
 int EINVAL ;
 int FFMIN (int,int) ;
 scalar_t__ MODE_BLUR ;
 int av_clip (int,int ,int) ;
 TYPE_6__* av_dict_get (int ,char*,int *,int ) ;
 int av_frame_make_writable (TYPE_3__*) ;
 int blur (TYPE_2__*,TYPE_3__*,int,int) ;
 int cover_rect (TYPE_2__*,TYPE_3__*,int,int) ;
 int ff_filter_frame (int ,TYPE_3__*) ;
 int strtol (int ,char**,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    CoverContext *cover = ctx->priv;
    AVDictionaryEntry *ex, *ey, *ew, *eh;
    int x = -1, y = -1, w = -1, h = -1;
    char *xendptr = ((void*)0), *yendptr = ((void*)0), *wendptr = ((void*)0), *hendptr = ((void*)0);

    ex = av_dict_get(in->metadata, "lavfi.rect.x", ((void*)0), AV_DICT_MATCH_CASE);
    ey = av_dict_get(in->metadata, "lavfi.rect.y", ((void*)0), AV_DICT_MATCH_CASE);
    ew = av_dict_get(in->metadata, "lavfi.rect.w", ((void*)0), AV_DICT_MATCH_CASE);
    eh = av_dict_get(in->metadata, "lavfi.rect.h", ((void*)0), AV_DICT_MATCH_CASE);
    if (ex && ey && ew && eh) {
        x = strtol(ex->value, &xendptr, 10);
        y = strtol(ey->value, &yendptr, 10);
        w = strtol(ew->value, &wendptr, 10);
        h = strtol(eh->value, &hendptr, 10);
    }

    if (!xendptr || *xendptr || !yendptr || *yendptr ||
        !wendptr || *wendptr || !hendptr || *hendptr
    ) {
        return ff_filter_frame(ctx->outputs[0], in);
    }

    if (x < 0) {
        w += x;
        x = 0;
    }
    if (y < 0) {
        h += y;
        y = 0;
    }
    w = FFMIN(w, in->width - x);
    h = FFMIN(h, in->height - y);

    if (w > in->width || h > in->height || w <= 0 || h <= 0)
        return AVERROR(EINVAL);

    if (cover->cover_frame) {
        if (w != cover->cover_frame->width || h != cover->cover_frame->height)
            return AVERROR(EINVAL);
    }

    cover->width = w;
    cover->height = h;

    x = av_clip(x, 0, in->width - w);
    y = av_clip(y, 0, in->height - h);

    av_frame_make_writable(in);

    if (cover->mode == MODE_BLUR) {
        blur (cover, in, x, y);
    } else {
        cover_rect(cover, in, x, y);
    }
    return ff_filter_frame(ctx->outputs[0], in);
}
