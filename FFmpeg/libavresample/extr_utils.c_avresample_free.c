
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVAudioResampleContext ;


 int av_freep (int **) ;
 int av_opt_free (int *) ;
 int avresample_close (int *) ;

void avresample_free(AVAudioResampleContext **avr)
{
    if (!*avr)
        return;
    avresample_close(*avr);
    av_opt_free(*avr);
    av_freep(avr);
}
