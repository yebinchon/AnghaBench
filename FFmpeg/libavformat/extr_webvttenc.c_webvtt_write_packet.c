
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int * pb; } ;
struct TYPE_6__ {int size; int data; scalar_t__ duration; scalar_t__ pts; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_PKT_DATA_WEBVTT_IDENTIFIER ;
 int AV_PKT_DATA_WEBVTT_SETTINGS ;
 int * av_packet_get_side_data (TYPE_1__*,int ,int*) ;
 int avio_printf (int *,char*,...) ;
 int avio_write (int *,int ,int ) ;
 int webvtt_write_time (int *,scalar_t__) ;

__attribute__((used)) static int webvtt_write_packet(AVFormatContext *ctx, AVPacket *pkt)
{
    AVIOContext *pb = ctx->pb;
    int id_size, settings_size;
    uint8_t *id, *settings;

    avio_printf(pb, "\n");

    id = av_packet_get_side_data(pkt, AV_PKT_DATA_WEBVTT_IDENTIFIER,
                                 &id_size);

    if (id && id_size > 0)
        avio_printf(pb, "%.*s\n", id_size, id);

    webvtt_write_time(pb, pkt->pts);
    avio_printf(pb, " --> ");
    webvtt_write_time(pb, pkt->pts + pkt->duration);

    settings = av_packet_get_side_data(pkt, AV_PKT_DATA_WEBVTT_SETTINGS,
                                       &settings_size);

    if (settings && settings_size > 0)
        avio_printf(pb, " %.*s", settings_size, settings);

    avio_printf(pb, "\n");

    avio_write(pb, pkt->data, pkt->size);
    avio_printf(pb, "\n");

    return 0;
}
