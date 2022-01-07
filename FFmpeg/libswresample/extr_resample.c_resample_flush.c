
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ch_count; int bps; scalar_t__* ch; int planar; } ;
struct SwrContext {int in_buffer_count; int in_buffer_index; TYPE_2__ in_buffer; TYPE_1__* resample; } ;
struct TYPE_4__ {int filter_length; } ;
typedef TYPE_1__ ResampleContext ;
typedef TYPE_2__ AudioData ;


 int FFMIN (int,int ) ;
 int av_assert0 (int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int swri_realloc_audio (TYPE_2__*,int) ;

__attribute__((used)) static int resample_flush(struct SwrContext *s) {
    ResampleContext *c = s->resample;
    AudioData *a= &s->in_buffer;
    int i, j, ret;
    int reflection = (FFMIN(s->in_buffer_count, c->filter_length) + 1) / 2;

    if((ret = swri_realloc_audio(a, s->in_buffer_index + s->in_buffer_count + reflection)) < 0)
        return ret;
    av_assert0(a->planar);
    for(i=0; i<a->ch_count; i++){
        for(j=0; j<reflection; j++){
            memcpy(a->ch[i] + (s->in_buffer_index+s->in_buffer_count+j )*a->bps,
                a->ch[i] + (s->in_buffer_index+s->in_buffer_count-j-1)*a->bps, a->bps);
        }
    }
    s->in_buffer_count += reflection;
    return 0;
}
