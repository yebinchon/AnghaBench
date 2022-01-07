
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {TYPE_4__* m; TYPE_4__* a; TYPE_4__* d; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_25__ {TYPE_1__* internal; scalar_t__ is_disabled; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_24__ {int format; int h; int w; } ;
struct TYPE_23__ {scalar_t__ color_range; } ;
struct TYPE_22__ {int * height; void** premultiply; scalar_t__ inverse; } ;
struct TYPE_20__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ PreMultiplyContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 scalar_t__ AVCOL_RANGE_JPEG ;
 scalar_t__ AVCOL_RANGE_MPEG ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 TYPE_4__* av_frame_clone (TYPE_4__*) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 void* premultiply16 ;
 void* premultiply16offset ;
 void* premultiply16yuv ;
 void* premultiply8 ;
 void* premultiply8offset ;
 void* premultiply8yuv ;
 int premultiply_slice ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 void* unpremultiply16 ;
 void* unpremultiply16offset ;
 void* unpremultiply16yuv ;
 void* unpremultiply8 ;
 void* unpremultiply8offset ;
 void* unpremultiply8yuv ;

__attribute__((used)) static int filter_frame(AVFilterContext *ctx,
                        AVFrame **out, AVFrame *base, AVFrame *alpha)
{
    PreMultiplyContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    if (ctx->is_disabled) {
        *out = av_frame_clone(base);
        if (!*out)
            return AVERROR(ENOMEM);
    } else {
        ThreadData td;
        int full, limited;

        *out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!*out)
            return AVERROR(ENOMEM);
        av_frame_copy_props(*out, base);

        full = base->color_range == AVCOL_RANGE_JPEG;
        limited = base->color_range == AVCOL_RANGE_MPEG;

        if (s->inverse) {
            switch (outlink->format) {
            case 138:
            case 132:
                s->premultiply[0] = full ? unpremultiply8 : unpremultiply8offset;
                s->premultiply[1] = s->premultiply[2] = unpremultiply8yuv;
                break;
            case 128:
                s->premultiply[0] = unpremultiply8;
                s->premultiply[1] = s->premultiply[2] = unpremultiply8yuv;
                break;
            case 150:
            case 154:
                s->premultiply[0] = s->premultiply[1] = s->premultiply[2] = limited ? unpremultiply8offset : unpremultiply8;
                break;
            case 133:
            case 129:
            case 137:
            case 131:
            case 136:
            case 135:
            case 134:
            case 130:
                s->premultiply[0] = full ? unpremultiply16 : unpremultiply16offset;
                s->premultiply[1] = s->premultiply[2] = unpremultiply16yuv;
                break;
            case 145:
            case 149:
            case 153:
            case 148:
            case 152:
            case 147:
            case 146:
            case 151:
                s->premultiply[0] = s->premultiply[1] = s->premultiply[2] = limited ? unpremultiply16offset : unpremultiply16;
                break;
            case 140:
                s->premultiply[0] = limited ? unpremultiply8offset : unpremultiply8;
                break;
            case 139:
            case 144:
            case 143:
            case 142:
            case 141:
                s->premultiply[0] = limited ? unpremultiply16offset : unpremultiply16;
                break;
            }
        } else {
            switch (outlink->format) {
            case 138:
            case 132:
                s->premultiply[0] = full ? premultiply8 : premultiply8offset;
                s->premultiply[1] = s->premultiply[2] = premultiply8yuv;
                break;
            case 128:
                s->premultiply[0] = premultiply8;
                s->premultiply[1] = s->premultiply[2] = premultiply8yuv;
                break;
            case 150:
            case 154:
                s->premultiply[0] = s->premultiply[1] = s->premultiply[2] = limited ? premultiply8offset : premultiply8;
                break;
            case 133:
            case 129:
            case 137:
            case 131:
            case 136:
            case 135:
            case 134:
            case 130:
                s->premultiply[0] = full ? premultiply16 : premultiply16offset;
                s->premultiply[1] = s->premultiply[2] = premultiply16yuv;
                break;
            case 145:
            case 149:
            case 153:
            case 148:
            case 152:
            case 147:
            case 146:
            case 151:
                s->premultiply[0] = s->premultiply[1] = s->premultiply[2] = limited ? premultiply16offset : premultiply16;
                break;
            case 140:
                s->premultiply[0] = limited ? premultiply8offset : premultiply8;
                break;
            case 139:
            case 144:
            case 143:
            case 142:
            case 141:
                s->premultiply[0] = limited ? premultiply16offset : premultiply16;
                break;
            }
        }

        td.d = *out;
        td.a = alpha;
        td.m = base;
        ctx->internal->execute(ctx, premultiply_slice, &td, ((void*)0), FFMIN(s->height[0],
                                                                        ff_filter_get_nb_threads(ctx)));
    }

    return 0;
}
