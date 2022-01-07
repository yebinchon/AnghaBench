
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ sz; int * buf; int duration; int pts; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
struct vpx_codec_cx_pkt {TYPE_2__ data; } ;
struct FrameListData {int flags; int frame_number; scalar_t__ sz_alpha; int * buf_alpha; int sse; scalar_t__ have_sse; int * buf; scalar_t__ sz; int duration; int pts; } ;
struct TYPE_7__ {int frame_number; scalar_t__ have_sse; int sse; } ;
typedef TYPE_3__ VPxContext ;


 int VPX_FRAME_IS_INVISIBLE ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void cx_pktcpy(struct FrameListData *dst,
                             const struct vpx_codec_cx_pkt *src,
                             const struct vpx_codec_cx_pkt *src_alpha,
                             VPxContext *ctx)
{
    dst->pts = src->data.frame.pts;
    dst->duration = src->data.frame.duration;
    dst->flags = src->data.frame.flags;
    dst->sz = src->data.frame.sz;
    dst->buf = src->data.frame.buf;
    dst->have_sse = 0;

    if (!(dst->flags & VPX_FRAME_IS_INVISIBLE)) {
        dst->frame_number = ++ctx->frame_number;
        dst->have_sse = ctx->have_sse;
        if (ctx->have_sse) {




            memcpy(dst->sse, ctx->sse, sizeof(dst->sse));
            ctx->have_sse = 0;
        }
    } else {
        dst->frame_number = -1;
    }
    if (src_alpha) {
        dst->buf_alpha = src_alpha->data.frame.buf;
        dst->sz_alpha = src_alpha->data.frame.sz;
    } else {
        dst->buf_alpha = ((void*)0);
        dst->sz_alpha = 0;
    }
}
