
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int target_filename ;
typedef scalar_t__ int64_t ;
struct TYPE_24__ {int file; } ;
struct TYPE_23__ {char* url; TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_22__ {int window_size; int extra_window_size; scalar_t__ remove_at_exit; } ;
struct TYPE_21__ {size_t first_stream; int fragment_index; int nb_fragments; TYPE_8__** fragments; scalar_t__ frag_start_ts; int temp_filename; scalar_t__ packets_written; TYPE_2__* ctx; } ;
struct TYPE_20__ {int pb; } ;
struct TYPE_19__ {int id; } ;
typedef TYPE_3__ OutputStream ;
typedef TYPE_4__ HDSContext ;
typedef TYPE_5__ AVFormatContext ;


 int add_fragment (TYPE_3__*,char*,scalar_t__,scalar_t__) ;
 int av_freep (TYPE_8__**) ;
 int avio_flush (int ) ;
 int close_file (TYPE_5__*,TYPE_3__*) ;
 int ff_rename (int ,char*,TYPE_5__*) ;
 int init_file (TYPE_5__*,TYPE_3__*,scalar_t__) ;
 int memmove (TYPE_8__**,TYPE_8__**,int) ;
 int snprintf (char*,int,char*,char*,int,int) ;
 int unlink (int ) ;
 int write_abst (TYPE_5__*,TYPE_3__*,int) ;

__attribute__((used)) static int hds_flush(AVFormatContext *s, OutputStream *os, int final,
                     int64_t end_ts)
{
    HDSContext *c = s->priv_data;
    int i, ret = 0;
    char target_filename[1024];
    int index = s->streams[os->first_stream]->id;

    if (!os->packets_written)
        return 0;

    avio_flush(os->ctx->pb);
    os->packets_written = 0;
    close_file(s, os);

    snprintf(target_filename, sizeof(target_filename),
             "%s/stream%dSeg1-Frag%d", s->url, index, os->fragment_index);
    ret = ff_rename(os->temp_filename, target_filename, s);
    if (ret < 0)
        return ret;
    add_fragment(os, target_filename, os->frag_start_ts, end_ts - os->frag_start_ts);

    if (!final) {
        ret = init_file(s, os, end_ts);
        if (ret < 0)
            return ret;
    }

    if (c->window_size || (final && c->remove_at_exit)) {
        int remove = os->nb_fragments - c->window_size - c->extra_window_size;
        if (final && c->remove_at_exit)
            remove = os->nb_fragments;
        if (remove > 0) {
            for (i = 0; i < remove; i++) {
                unlink(os->fragments[i]->file);
                av_freep(&os->fragments[i]);
            }
            os->nb_fragments -= remove;
            memmove(os->fragments, os->fragments + remove,
                    os->nb_fragments * sizeof(*os->fragments));
        }
    }

    if (ret >= 0)
        ret = write_abst(s, os, final);
    return ret;
}
