
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_index_size; TYPE_1__** streams; } ;
struct TYPE_4__ {int nb_index_entries; int * index_entries; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIndexEntry ;
typedef TYPE_2__ AVFormatContext ;



void ff_reduce_index(AVFormatContext *s, int stream_index)
{
    AVStream *st = s->streams[stream_index];
    unsigned int max_entries = s->max_index_size / sizeof(AVIndexEntry);

    if ((unsigned) st->nb_index_entries >= max_entries) {
        int i;
        for (i = 0; 2 * i < st->nb_index_entries; i++)
            st->index_entries[i] = st->index_entries[2 * i];
        st->nb_index_entries = i;
    }
}
