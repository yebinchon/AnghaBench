
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_3__* refs; TYPE_2__* frames; } ;
struct TYPE_16__ {TYPE_5__* next_refs; TYPE_4__ s; } ;
typedef TYPE_6__ VP9Context ;
struct TYPE_17__ {TYPE_6__* priv_data; } ;
struct TYPE_15__ {void* f; } ;
struct TYPE_13__ {void* f; } ;
struct TYPE_11__ {void* f; } ;
struct TYPE_12__ {TYPE_1__ tf; } ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 void* av_frame_alloc () ;
 int av_log (TYPE_7__*,int ,char*,int) ;
 int vp9_decode_free (TYPE_7__*) ;

__attribute__((used)) static int init_frames(AVCodecContext *avctx)
{
    VP9Context *s = avctx->priv_data;
    int i;

    for (i = 0; i < 3; i++) {
        s->s.frames[i].tf.f = av_frame_alloc();
        if (!s->s.frames[i].tf.f) {
            vp9_decode_free(avctx);
            av_log(avctx, AV_LOG_ERROR, "Failed to allocate frame buffer %d\n", i);
            return AVERROR(ENOMEM);
        }
    }
    for (i = 0; i < 8; i++) {
        s->s.refs[i].f = av_frame_alloc();
        s->next_refs[i].f = av_frame_alloc();
        if (!s->s.refs[i].f || !s->next_refs[i].f) {
            vp9_decode_free(avctx);
            av_log(avctx, AV_LOG_ERROR, "Failed to allocate frame buffer %d\n", i);
            return AVERROR(ENOMEM);
        }
    }

    return 0;
}
