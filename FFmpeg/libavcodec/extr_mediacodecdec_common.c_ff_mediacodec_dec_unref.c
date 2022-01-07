
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* codec_name; int * surface; int * format; int * codec; int refcount; } ;
typedef TYPE_1__ MediaCodecDecContext ;


 int atomic_fetch_sub (int *,int) ;
 int av_freep (TYPE_1__**) ;
 int ff_AMediaCodec_delete (int *) ;
 int ff_AMediaFormat_delete (int *) ;
 int ff_mediacodec_surface_unref (int *,int *) ;

__attribute__((used)) static void ff_mediacodec_dec_unref(MediaCodecDecContext *s)
{
    if (!s)
        return;

    if (atomic_fetch_sub(&s->refcount, 1) == 1) {
        if (s->codec) {
            ff_AMediaCodec_delete(s->codec);
            s->codec = ((void*)0);
        }

        if (s->format) {
            ff_AMediaFormat_delete(s->format);
            s->format = ((void*)0);
        }

        if (s->surface) {
            ff_mediacodec_surface_unref(s->surface, ((void*)0));
            s->surface = ((void*)0);
        }

        av_freep(&s->codec_name);
        av_freep(&s);
    }
}
