
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** outputs; int * priv; } ;
struct TYPE_5__ {int h; int w; } ;
typedef int FieldMatchContext ;
typedef int const AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int av_assert0 (int ) ;
 int const* av_frame_clone (int const*) ;
 int av_frame_copy_props (int const*,int const*) ;
 int copy_fields (int *,int const*,int const*,int) ;
 int const* ff_get_video_buffer (TYPE_1__*,int ,int ) ;

 int mC ;




__attribute__((used)) static AVFrame *create_weave_frame(AVFilterContext *ctx, int match, int field,
                                   const AVFrame *prv, AVFrame *src, const AVFrame *nxt)
{
    AVFrame *dst;
    FieldMatchContext *fm = ctx->priv;

    if (match == mC) {
        dst = av_frame_clone(src);
    } else {
        AVFilterLink *outlink = ctx->outputs[0];

        dst = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!dst)
            return ((void*)0);
        av_frame_copy_props(dst, src);

        switch (match) {
        case 129: copy_fields(fm, dst, src, 1-field); copy_fields(fm, dst, prv, field); break;
        case 130: copy_fields(fm, dst, src, 1-field); copy_fields(fm, dst, nxt, field); break;
        case 131: copy_fields(fm, dst, src, field); copy_fields(fm, dst, prv, 1-field); break;
        case 128: copy_fields(fm, dst, src, field); copy_fields(fm, dst, nxt, 1-field); break;
        default: av_assert0(0);
        }
    }
    return dst;
}
