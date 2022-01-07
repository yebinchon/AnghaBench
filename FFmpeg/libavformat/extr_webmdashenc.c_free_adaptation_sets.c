
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nb_as; TYPE_4__* as; } ;
typedef TYPE_1__ WebMDashMuxContext ;
struct TYPE_7__ {struct TYPE_7__* streams; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (TYPE_4__**) ;

__attribute__((used)) static void free_adaptation_sets(AVFormatContext *s) {
    WebMDashMuxContext *w = s->priv_data;
    int i;
    for (i = 0; i < w->nb_as; i++) {
        av_freep(&w->as[i].streams);
    }
    av_freep(&w->as);
    w->nb_as = 0;
}
