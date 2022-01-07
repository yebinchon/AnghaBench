
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int temp; int noise; } ;
struct TYPE_8__ {int ch; } ;
struct TYPE_7__ {int ch; } ;
struct TYPE_10__ {scalar_t__ flushed; scalar_t__ delayed_samples_fixup; int full_convert; int out_convert; int in_convert; TYPE_3__ dither; int drop_temp; int silence; int in_buffer; int preout; int midbuf; int postin; TYPE_2__ out; TYPE_1__ in; scalar_t__ resample_in_constraint; scalar_t__ in_buffer_count; scalar_t__ in_buffer_index; } ;
typedef TYPE_4__ SwrContext ;


 int free_temp (int *) ;
 int memset (int ,int ,int) ;
 int swri_audio_convert_free (int *) ;
 int swri_rematrix_free (TYPE_4__*) ;

__attribute__((used)) static void clear_context(SwrContext *s){
    s->in_buffer_index= 0;
    s->in_buffer_count= 0;
    s->resample_in_constraint= 0;
    memset(s->in.ch, 0, sizeof(s->in.ch));
    memset(s->out.ch, 0, sizeof(s->out.ch));
    free_temp(&s->postin);
    free_temp(&s->midbuf);
    free_temp(&s->preout);
    free_temp(&s->in_buffer);
    free_temp(&s->silence);
    free_temp(&s->drop_temp);
    free_temp(&s->dither.noise);
    free_temp(&s->dither.temp);
    swri_audio_convert_free(&s-> in_convert);
    swri_audio_convert_free(&s->out_convert);
    swri_audio_convert_free(&s->full_convert);
    swri_rematrix_free(s);

    s->delayed_samples_fixup = 0;
    s->flushed = 0;
}
