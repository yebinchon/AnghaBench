
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
 int AV_RB32 (char*) ;
 int EINVAL ;
 int EIO ;
 int RTMP_HANDSHAKE_PACKET_SIZE ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int ffurl_read_complete (int ,char*,int) ;

__attribute__((used)) static int rtmp_receive_hs_packet(RTMPContext* rt, uint32_t *first_int,
                                  uint32_t *second_int, char *arraydata,
                                  int size)
{
    int inoutsize;

    inoutsize = ffurl_read_complete(rt->stream, arraydata,
                                    RTMP_HANDSHAKE_PACKET_SIZE);
    if (inoutsize <= 0)
        return AVERROR(EIO);
    if (inoutsize != RTMP_HANDSHAKE_PACKET_SIZE) {
        av_log(rt, AV_LOG_ERROR, "Erroneous Message size %d"
               " not following standard\n", (int)inoutsize);
        return AVERROR(EINVAL);
    }

    *first_int = AV_RB32(arraydata);
    *second_int = AV_RB32(arraydata + 4);
    return 0;
}
