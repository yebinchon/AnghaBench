
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int URLContext ;
typedef int RTMPPacket ;


 int AVERROR (int ) ;
 int EIO ;
 int ff_rtmp_packet_read_internal (int *,int *,int,int **,int*,int ) ;
 int ffurl_read (int *,int *,int) ;

int ff_rtmp_packet_read(URLContext *h, RTMPPacket *p,
                        int chunk_size, RTMPPacket **prev_pkt, int *nb_prev_pkt)
{
    uint8_t hdr;

    if (ffurl_read(h, &hdr, 1) != 1)
        return AVERROR(EIO);

    return ff_rtmp_packet_read_internal(h, p, chunk_size, prev_pkt,
                                        nb_prev_pkt, hdr);
}
