
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flushing; int refcount; int surface; } ;
typedef TYPE_1__ MediaCodecDecContext ;
typedef int AVCodecContext ;


 int atomic_load (int *) ;
 int mediacodec_dec_flush_codec (int *,TYPE_1__*) ;

int ff_mediacodec_dec_flush(AVCodecContext *avctx, MediaCodecDecContext *s)
{
    if (!s->surface || atomic_load(&s->refcount) == 1) {
        int ret;



        if ((ret = mediacodec_dec_flush_codec(avctx, s)) < 0) {
            return ret;
        }

        return 1;
    }

    s->flushing = 1;
    return 0;
}
