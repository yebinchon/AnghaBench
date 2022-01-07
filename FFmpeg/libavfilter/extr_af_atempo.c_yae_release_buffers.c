
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * complex_to_real; int * real_to_complex; int correlation; int hann; int buffer; TYPE_1__* frag; } ;
struct TYPE_5__ {int xdat; int data; } ;
typedef TYPE_2__ ATempoContext ;


 int av_freep (int *) ;
 int av_rdft_end (int *) ;
 int yae_clear (TYPE_2__*) ;

__attribute__((used)) static void yae_release_buffers(ATempoContext *atempo)
{
    yae_clear(atempo);

    av_freep(&atempo->frag[0].data);
    av_freep(&atempo->frag[1].data);
    av_freep(&atempo->frag[0].xdat);
    av_freep(&atempo->frag[1].xdat);

    av_freep(&atempo->buffer);
    av_freep(&atempo->hann);
    av_freep(&atempo->correlation);

    av_rdft_end(atempo->real_to_complex);
    atempo->real_to_complex = ((void*)0);

    av_rdft_end(atempo->complex_to_real);
    atempo->complex_to_real = ((void*)0);
}
