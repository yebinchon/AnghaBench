
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct playlist {int n_main_streams; int main_streams; int index; TYPE_1__* ctx; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_8__ {int nb_streams; TYPE_2__** streams; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int add_stream_to_programs (int *,struct playlist*,TYPE_2__*) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int dynarray_add (int *,int*,TYPE_2__*) ;
 int set_stream_info_from_input_stream (TYPE_2__*,struct playlist*,TYPE_2__*) ;

__attribute__((used)) static int update_streams_from_subdemuxer(AVFormatContext *s, struct playlist *pls)
{
    int err;

    while (pls->n_main_streams < pls->ctx->nb_streams) {
        int ist_idx = pls->n_main_streams;
        AVStream *st = avformat_new_stream(s, ((void*)0));
        AVStream *ist = pls->ctx->streams[ist_idx];

        if (!st)
            return AVERROR(ENOMEM);

        st->id = pls->index;
        dynarray_add(&pls->main_streams, &pls->n_main_streams, st);

        add_stream_to_programs(s, pls, st);

        err = set_stream_info_from_input_stream(st, pls, ist);
        if (err < 0)
            return err;
    }

    return 0;
}
