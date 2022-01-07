
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ pos; int buffer; int buf_ptr; int buf_end; scalar_t__ eof_reached; } ;
struct playlist {int n_main_streams; int cur_seq_no; int seek_stream_index; int seek_flags; scalar_t__ seek_timestamp; int ctx; TYPE_4__ pb; int pkt; scalar_t__ input_next_requested; int input_next; int parent; scalar_t__ input_read_done; int input; TYPE_3__** main_streams; } ;
typedef scalar_t__ int64_t ;
struct TYPE_14__ {scalar_t__ duration; TYPE_3__** streams; TYPE_5__* priv_data; } ;
struct TYPE_13__ {scalar_t__ first_timestamp; int n_playlists; scalar_t__ cur_timestamp; struct playlist** playlists; TYPE_1__* ctx; } ;
struct TYPE_10__ {int den; } ;
struct TYPE_11__ {TYPE_2__ time_base; } ;
struct TYPE_9__ {int ctx_flags; } ;
typedef TYPE_5__ HLSContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVFMTCTX_UNSEEKABLE ;
 int AVSEEK_FLAG_ANY ;
 int AVSEEK_FLAG_BACKWARD ;
 int AVSEEK_FLAG_BYTE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_ROUND_DOWN ;
 int AV_ROUND_UP ;
 int AV_TIME_BASE ;
 int EIO ;
 int ENOSYS ;
 int av_packet_unref (int *) ;
 scalar_t__ av_rescale_rnd (scalar_t__,int ,int ,int ) ;
 int ff_format_io_close (int ,int *) ;
 int ff_read_frame_flush (int ) ;
 int find_timestamp_in_playlist (TYPE_5__*,struct playlist*,scalar_t__,int*) ;

__attribute__((used)) static int hls_read_seek(AVFormatContext *s, int stream_index,
                               int64_t timestamp, int flags)
{
    HLSContext *c = s->priv_data;
    struct playlist *seek_pls = ((void*)0);
    int i, seq_no;
    int j;
    int stream_subdemuxer_index;
    int64_t first_timestamp, seek_timestamp, duration;

    if ((flags & AVSEEK_FLAG_BYTE) || (c->ctx->ctx_flags & AVFMTCTX_UNSEEKABLE))
        return AVERROR(ENOSYS);

    first_timestamp = c->first_timestamp == AV_NOPTS_VALUE ?
                      0 : c->first_timestamp;

    seek_timestamp = av_rescale_rnd(timestamp, AV_TIME_BASE,
                                    s->streams[stream_index]->time_base.den,
                                    flags & AVSEEK_FLAG_BACKWARD ?
                                    AV_ROUND_DOWN : AV_ROUND_UP);

    duration = s->duration == AV_NOPTS_VALUE ?
               0 : s->duration;

    if (0 < duration && duration < seek_timestamp - first_timestamp)
        return AVERROR(EIO);


    for (i = 0; i < c->n_playlists; i++) {
        struct playlist *pls = c->playlists[i];
        for (j = 0; j < pls->n_main_streams; j++) {
            if (pls->main_streams[j] == s->streams[stream_index]) {
                seek_pls = pls;
                stream_subdemuxer_index = j;
                break;
            }
        }
    }


    if (!seek_pls || !find_timestamp_in_playlist(c, seek_pls, seek_timestamp, &seq_no))
        return AVERROR(EIO);


    seek_pls->cur_seq_no = seq_no;
    seek_pls->seek_stream_index = stream_subdemuxer_index;

    for (i = 0; i < c->n_playlists; i++) {

        struct playlist *pls = c->playlists[i];
        ff_format_io_close(pls->parent, &pls->input);
        pls->input_read_done = 0;
        ff_format_io_close(pls->parent, &pls->input_next);
        pls->input_next_requested = 0;
        av_packet_unref(&pls->pkt);
        pls->pb.eof_reached = 0;

        pls->pb.buf_end = pls->pb.buf_ptr = pls->pb.buffer;

        pls->pb.pos = 0;

        ff_read_frame_flush(pls->ctx);

        pls->seek_timestamp = seek_timestamp;
        pls->seek_flags = flags;

        if (pls != seek_pls) {

            find_timestamp_in_playlist(c, pls, seek_timestamp, &pls->cur_seq_no);



            pls->seek_stream_index = -1;
            pls->seek_flags |= AVSEEK_FLAG_ANY;
        }
    }

    c->cur_timestamp = seek_timestamp;

    return 0;
}
