
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int PayloadContext ;
typedef int AVStream ;
typedef int AVPacket ;
typedef int AVFormatContext ;


 int return_stored_frame (int *,int *,int *,int *,int *,int const*,int) ;
 int store_packet (int *,int *,int *,int *,int *,int const*,int) ;

__attribute__((used)) static int qcelp_parse_packet(AVFormatContext *ctx, PayloadContext *data,
                              AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                              const uint8_t *buf, int len, uint16_t seq,
                              int flags)
{
    if (buf)
        return store_packet(ctx, data, st, pkt, timestamp, buf, len);
    else
        return return_stored_frame(ctx, data, st, pkt, timestamp, buf, len);
}
