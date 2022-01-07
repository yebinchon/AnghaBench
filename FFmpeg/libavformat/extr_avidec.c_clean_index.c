
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_9__ {int sample_size; } ;
struct TYPE_8__ {int nb_index_entries; TYPE_1__* index_entries; TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ pos; scalar_t__ size; scalar_t__ timestamp; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVIStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVINDEX_KEYFRAME ;
 int FFMIN (int,scalar_t__) ;
 int av_add_index_entry (TYPE_2__*,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void clean_index(AVFormatContext *s)
{
    int i;
    int64_t j;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];
        AVIStream *ast = st->priv_data;
        int n = st->nb_index_entries;
        int max = ast->sample_size;
        int64_t pos, size, ts;

        if (n != 1 || ast->sample_size == 0)
            continue;

        while (max < 1024)
            max += max;

        pos = st->index_entries[0].pos;
        size = st->index_entries[0].size;
        ts = st->index_entries[0].timestamp;

        for (j = 0; j < size; j += max)
            av_add_index_entry(st, pos + j, ts + j, FFMIN(max, size - j), 0,
                               AVINDEX_KEYFRAME);
    }
}
