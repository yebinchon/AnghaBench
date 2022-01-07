
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_buffers; int * buf; } ;
typedef TYPE_1__ AVAudioFifo ;


 int av_fifo_freep (int *) ;
 int av_free (TYPE_1__*) ;
 int av_freep (int **) ;

void av_audio_fifo_free(AVAudioFifo *af)
{
    if (af) {
        if (af->buf) {
            int i;
            for (i = 0; i < af->nb_buffers; i++) {
                av_fifo_freep(&af->buf[i]);
            }
            av_freep(&af->buf);
        }
        av_free(af);
    }
}
