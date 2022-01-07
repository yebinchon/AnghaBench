
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int nb_slaves; int * slaves; } ;
typedef TYPE_1__ TeeContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int **) ;
 int close_slave (int *) ;

__attribute__((used)) static void close_slaves(AVFormatContext *avf)
{
    TeeContext *tee = avf->priv_data;
    unsigned i;

    for (i = 0; i < tee->nb_slaves; i++) {
        close_slave(&tee->slaves[i]);
    }
    av_freep(&tee->slaves);
}
