
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int packet_timestamp_end; int packet_timestamp_start; int packet_size_left; int packet_size; scalar_t__ packet_buf; int pb; scalar_t__ packet_nb_payloads; int nb_packets; scalar_t__ is_streamed; } ;
struct TYPE_6__ {scalar_t__ packet_size; int pb; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int av_assert0 (int) ;
 int avio_flush (int ) ;
 int avio_write (int ,scalar_t__,scalar_t__) ;
 int ffio_init_context (int *,scalar_t__,scalar_t__,int,int *,int *,int *,int *) ;
 int memset (scalar_t__,int ,int) ;
 int put_chunk (TYPE_1__*,int,scalar_t__,int ) ;
 int put_payload_parsing_info (TYPE_1__*,int,int,scalar_t__,int) ;

__attribute__((used)) static void flush_packet(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    int packet_hdr_size, packet_filled_size;

    av_assert0(asf->packet_timestamp_end >= asf->packet_timestamp_start);

    if (asf->is_streamed)
        put_chunk(s, 0x4424, s->packet_size, 0);

    packet_hdr_size = put_payload_parsing_info(s,
                                               asf->packet_timestamp_start,
                                               asf->packet_timestamp_end - asf->packet_timestamp_start,
                                               asf->packet_nb_payloads,
                                               asf->packet_size_left);

    packet_filled_size = asf->packet_size - asf->packet_size_left;
    av_assert0(packet_hdr_size <= asf->packet_size_left);
    memset(asf->packet_buf + packet_filled_size, 0, asf->packet_size_left);

    avio_write(s->pb, asf->packet_buf, s->packet_size - packet_hdr_size);

    avio_flush(s->pb);
    asf->nb_packets++;
    asf->packet_nb_payloads = 0;
    asf->packet_timestamp_start = -1;
    asf->packet_timestamp_end = -1;
    ffio_init_context(&asf->pb, asf->packet_buf, s->packet_size, 1,
                      ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
