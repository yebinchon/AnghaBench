
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * asf_st; TYPE_2__* streams; scalar_t__ packet_time_start; scalar_t__ packet_time_delta; scalar_t__ packet_multi_size; scalar_t__ packet_frag_timestamp; scalar_t__ packet_frag_size; scalar_t__ packet_frag_offset; scalar_t__ packet_padsize; scalar_t__ packet_key_frame; scalar_t__ packet_replic_size; scalar_t__ packet_seq; scalar_t__ packet_segments; scalar_t__ packet_segsizetype; scalar_t__ packet_timestamp; scalar_t__ packet_property; scalar_t__ packet_flags; scalar_t__ packet_size_left; } ;
struct TYPE_6__ {scalar_t__ seq; scalar_t__ frag_offset; scalar_t__ packet_obj_size; int pkt; } ;
struct TYPE_5__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFStream ;
typedef TYPE_3__ ASFContext ;


 int av_packet_unref (int *) ;

__attribute__((used)) static void asf_reset_header(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    ASFStream *asf_st;
    int i;

    asf->packet_size_left = 0;
    asf->packet_flags = 0;
    asf->packet_property = 0;
    asf->packet_timestamp = 0;
    asf->packet_segsizetype = 0;
    asf->packet_segments = 0;
    asf->packet_seq = 0;
    asf->packet_replic_size = 0;
    asf->packet_key_frame = 0;
    asf->packet_padsize = 0;
    asf->packet_frag_offset = 0;
    asf->packet_frag_size = 0;
    asf->packet_frag_timestamp = 0;
    asf->packet_multi_size = 0;
    asf->packet_time_delta = 0;
    asf->packet_time_start = 0;

    for (i = 0; i < 128; i++) {
        asf_st = &asf->streams[i];
        av_packet_unref(&asf_st->pkt);
        asf_st->packet_obj_size = 0;
        asf_st->frag_offset = 0;
        asf_st->seq = 0;
    }
    asf->asf_st = ((void*)0);
}
