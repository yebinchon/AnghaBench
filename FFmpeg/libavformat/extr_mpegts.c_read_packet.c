
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int TS_PACKET_SIZE ;
 int ffio_read_indirect (int *,int*,int,int const**) ;
 scalar_t__ mpegts_resync (TYPE_1__*,int,int const*) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, uint8_t *buf, int raw_packet_size,
                       const uint8_t **data)
{
    AVIOContext *pb = s->pb;
    int len;

    for (;;) {
        len = ffio_read_indirect(pb, buf, TS_PACKET_SIZE, data);
        if (len != TS_PACKET_SIZE)
            return len < 0 ? len : AVERROR_EOF;

        if ((*data)[0] != 0x47) {


            if (mpegts_resync(s, raw_packet_size, *data) < 0)
                return AVERROR(EAGAIN);
            else
                continue;
        } else {
            break;
        }
    }
    return 0;
}
