
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eof_reached; } ;
struct playlist {int needed; scalar_t__ seek_timestamp; int seek_stream_index; scalar_t__ input_next_requested; int input_next; int parent; scalar_t__ input_read_done; int input; int cur_seq_no; int seek_flags; TYPE_1__ pb; scalar_t__ broken; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {int n_playlists; scalar_t__ cur_timestamp; struct playlist** playlists; } ;
typedef TYPE_2__ HLSContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVSEEK_FLAG_ANY ;
 int AV_LOG_INFO ;
 scalar_t__ AV_NOPTS_VALUE ;
 int av_log (TYPE_3__*,int ,char*,int,...) ;
 int ff_format_io_close (int ,int *) ;
 int playlist_needed (struct playlist*) ;
 int select_cur_seq_no (TYPE_2__*,struct playlist*) ;

__attribute__((used)) static int recheck_discard_flags(AVFormatContext *s, int first)
{
    HLSContext *c = s->priv_data;
    int i, changed = 0;
    int cur_needed;


    for (i = 0; i < c->n_playlists; i++) {
        struct playlist *pls = c->playlists[i];

        cur_needed = playlist_needed(c->playlists[i]);

        if (pls->broken) {
            continue;
        }
        if (cur_needed && !pls->needed) {
            pls->needed = 1;
            changed = 1;
            pls->cur_seq_no = select_cur_seq_no(c, pls);
            pls->pb.eof_reached = 0;
            if (c->cur_timestamp != AV_NOPTS_VALUE) {

                pls->seek_timestamp = c->cur_timestamp;
                pls->seek_flags = AVSEEK_FLAG_ANY;
                pls->seek_stream_index = -1;
            }
            av_log(s, AV_LOG_INFO, "Now receiving playlist %d, segment %d\n", i, pls->cur_seq_no);
        } else if (first && !cur_needed && pls->needed) {
            ff_format_io_close(pls->parent, &pls->input);
            pls->input_read_done = 0;
            ff_format_io_close(pls->parent, &pls->input_next);
            pls->input_next_requested = 0;
            pls->needed = 0;
            changed = 1;
            av_log(s, AV_LOG_INFO, "No longer receiving playlist %d\n", i);
        }
    }
    return changed;
}
