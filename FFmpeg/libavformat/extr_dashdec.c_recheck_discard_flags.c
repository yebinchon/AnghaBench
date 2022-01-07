
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct representation {int stream_index; int input; int parent; scalar_t__ ctx; int cur_seq_no; scalar_t__ init_sec_buf_read_offset; scalar_t__ cur_seg_offset; TYPE_1__* assoc_stream; } ;
struct TYPE_2__ {scalar_t__ discard; } ;
typedef int AVFormatContext ;


 scalar_t__ AVDISCARD_ALL ;
 int AV_LOG_INFO ;
 int FFMAX (int ,int ) ;
 int av_log (int *,int ,char*,int ) ;
 int close_demux_for_component (struct representation*) ;
 int ff_format_io_close (int ,int *) ;
 int reopen_demux_for_component (int *,struct representation*) ;

__attribute__((used)) static void recheck_discard_flags(AVFormatContext *s, struct representation **p, int n)
{
    int i, j;

    for (i = 0; i < n; i++) {
        struct representation *pls = p[i];
        int needed = !pls->assoc_stream || pls->assoc_stream->discard < AVDISCARD_ALL;

        if (needed && !pls->ctx) {
            pls->cur_seg_offset = 0;
            pls->init_sec_buf_read_offset = 0;

            for (j = 0; j < n; j++) {
                pls->cur_seq_no = FFMAX(pls->cur_seq_no, p[j]->cur_seq_no);
            }
            reopen_demux_for_component(s, pls);
            av_log(s, AV_LOG_INFO, "Now receiving stream_index %d\n", pls->stream_index);
        } else if (!needed && pls->ctx) {
            close_demux_for_component(pls);
            ff_format_io_close(pls->parent, &pls->input);
            av_log(s, AV_LOG_INFO, "No longer receiving stream_index %d\n", pls->stream_index);
        }
    }
}
