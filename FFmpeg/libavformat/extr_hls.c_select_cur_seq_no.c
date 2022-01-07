
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct playlist {scalar_t__ last_load_time; scalar_t__ start_seq_no; scalar_t__ n_segments; scalar_t__ finished; int url; } ;
struct TYPE_5__ {scalar_t__ cur_timestamp; scalar_t__ cur_seq_no; scalar_t__ live_start_index; int first_packet; } ;
typedef TYPE_1__ HLSContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int FFMAX (scalar_t__,int ) ;
 int FFMIN (scalar_t__,scalar_t__) ;
 scalar_t__ av_gettime_relative () ;
 scalar_t__ default_reload_interval (struct playlist*) ;
 int find_timestamp_in_playlist (TYPE_1__*,struct playlist*,scalar_t__,int*) ;
 int parse_playlist (TYPE_1__*,int ,struct playlist*,int *) ;

__attribute__((used)) static int select_cur_seq_no(HLSContext *c, struct playlist *pls)
{
    int seq_no;

    if (!pls->finished && !c->first_packet &&
        av_gettime_relative() - pls->last_load_time >= default_reload_interval(pls))

        parse_playlist(c, pls->url, pls, ((void*)0));




    if (pls->finished && c->cur_timestamp != AV_NOPTS_VALUE) {
        find_timestamp_in_playlist(c, pls, c->cur_timestamp, &seq_no);
        return seq_no;
    }

    if (!pls->finished) {
        if (!c->first_packet &&
            c->cur_seq_no >= pls->start_seq_no &&
            c->cur_seq_no < pls->start_seq_no + pls->n_segments)




            return c->cur_seq_no;



        if (c->live_start_index < 0)
            return pls->start_seq_no + FFMAX(pls->n_segments + c->live_start_index, 0);
        else
            return pls->start_seq_no + FFMIN(c->live_start_index, pls->n_segments - 1);
    }


    return pls->start_seq_no;
}
