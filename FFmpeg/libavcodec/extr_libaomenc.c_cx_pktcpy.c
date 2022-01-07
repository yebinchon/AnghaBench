
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; int sz; int flags; int duration; int pts; } ;
struct TYPE_6__ {TYPE_1__ frame; } ;
struct aom_codec_cx_pkt {TYPE_2__ data; } ;
struct FrameListData {int sse; scalar_t__ have_sse; scalar_t__ frame_number; int buf; int sz; int flags; int duration; int pts; } ;
struct TYPE_7__ {scalar_t__ have_sse; int sse; scalar_t__ frame_number; } ;
typedef TYPE_3__ AOMContext ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void cx_pktcpy(AOMContext *ctx,
                             struct FrameListData *dst,
                             const struct aom_codec_cx_pkt *src)
{
    dst->pts = src->data.frame.pts;
    dst->duration = src->data.frame.duration;
    dst->flags = src->data.frame.flags;
    dst->sz = src->data.frame.sz;
    dst->buf = src->data.frame.buf;
}
