
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct playlist** buffer; } ;
struct playlist {TYPE_4__* ctx; scalar_t__ input_next_requested; int input_next; scalar_t__ input_read_done; int input; TYPE_1__ pb; int pkt; struct playlist** init_sec_buf; int id3_deferred_extra; int id3_initial; struct playlist** id3_buf; struct playlist** renditions; struct playlist** main_streams; } ;
struct TYPE_7__ {int * pb; } ;
struct TYPE_6__ {int n_playlists; struct playlist** playlists; int ctx; } ;
typedef TYPE_2__ HLSContext ;


 int av_dict_free (int *) ;
 int av_free (struct playlist*) ;
 int av_freep (struct playlist***) ;
 int av_packet_unref (int *) ;
 int avformat_close_input (TYPE_4__**) ;
 int ff_format_io_close (int ,int *) ;
 int ff_id3v2_free_extra_meta (int *) ;
 int free_init_section_list (struct playlist*) ;
 int free_segment_list (struct playlist*) ;

__attribute__((used)) static void free_playlist_list(HLSContext *c)
{
    int i;
    for (i = 0; i < c->n_playlists; i++) {
        struct playlist *pls = c->playlists[i];
        free_segment_list(pls);
        free_init_section_list(pls);
        av_freep(&pls->main_streams);
        av_freep(&pls->renditions);
        av_freep(&pls->id3_buf);
        av_dict_free(&pls->id3_initial);
        ff_id3v2_free_extra_meta(&pls->id3_deferred_extra);
        av_freep(&pls->init_sec_buf);
        av_packet_unref(&pls->pkt);
        av_freep(&pls->pb.buffer);
        ff_format_io_close(c->ctx, &pls->input);
        pls->input_read_done = 0;
        ff_format_io_close(c->ctx, &pls->input_next);
        pls->input_next_requested = 0;
        if (pls->ctx) {
            pls->ctx->pb = ((void*)0);
            avformat_close_input(&pls->ctx);
        }
        av_free(pls);
    }
    av_freep(&c->playlists);
    c->n_playlists = 0;
}
