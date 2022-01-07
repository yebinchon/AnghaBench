
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ RTMPContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_WB32 (char*,int ) ;
 int EIO ;
 int RTMP_HANDSHAKE_PACKET_SIZE ;
 int av_log (TYPE_1__*,int ,char*) ;
 int ffurl_write (int ,char*,int) ;

__attribute__((used)) static int rtmp_send_hs_packet(RTMPContext* rt, uint32_t first_int,
                               uint32_t second_int, char *arraydata, int size)
{
    int inoutsize;

    AV_WB32(arraydata, first_int);
    AV_WB32(arraydata + 4, second_int);
    inoutsize = ffurl_write(rt->stream, arraydata,
                            RTMP_HANDSHAKE_PACKET_SIZE);
    if (inoutsize != RTMP_HANDSHAKE_PACKET_SIZE) {
        av_log(rt, AV_LOG_ERROR, "Unable to write answer\n");
        return AVERROR(EIO);
    }

    return 0;
}
