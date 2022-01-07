
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_ast; int * audio_data; } ;
typedef TYPE_1__ DVMuxContext ;


 int av_fifo_freep (int *) ;

__attribute__((used)) static void dv_delete_mux(DVMuxContext *c)
{
    int i;
    for (i=0; i < c->n_ast; i++)
        av_fifo_freep(&c->audio_data[i]);
}
