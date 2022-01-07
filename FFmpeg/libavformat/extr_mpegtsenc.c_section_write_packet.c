
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int pb; } ;
struct TYPE_5__ {TYPE_2__* opaque; } ;
typedef TYPE_1__ MpegTSSection ;
typedef TYPE_2__ AVFormatContext ;


 int TS_PACKET_SIZE ;
 int avio_write (int ,int const*,int ) ;
 int mpegts_prefix_m2ts_header (TYPE_2__*) ;

__attribute__((used)) static void section_write_packet(MpegTSSection *s, const uint8_t *packet)
{
    AVFormatContext *ctx = s->opaque;
    mpegts_prefix_m2ts_header(ctx);
    avio_write(ctx->pb, packet, TS_PACKET_SIZE);
}
