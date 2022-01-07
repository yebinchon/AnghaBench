
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ogg {int nstreams; int streams; } ;
struct TYPE_4__ {struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int av_freep (int *) ;
 int free_stream (TYPE_1__*,int) ;

__attribute__((used)) static int ogg_read_close(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    int i;

    for (i = 0; i < ogg->nstreams; i++) {
        free_stream(s, i);
    }

    ogg->nstreams = 0;

    av_freep(&ogg->streams);
    return 0;
}
