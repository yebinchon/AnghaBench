
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int max_payload_size; scalar_t__* buf; int cur_timestamp; int timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int FFMIN (int,int) ;
 scalar_t__* ff_h263_find_resync_marker_reverse (scalar_t__ const*,scalar_t__ const*) ;
 int ff_rtp_send_data (TYPE_2__*,scalar_t__*,int,int) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;

void ff_rtp_send_h263(AVFormatContext *s1, const uint8_t *buf1, int size)
{
    RTPMuxContext *s = s1->priv_data;
    int len, max_packet_size;
    uint8_t *q;

    max_packet_size = s->max_payload_size;

    while (size > 0) {
        q = s->buf;
        if (size >= 2 && (buf1[0] == 0) && (buf1[1] == 0)) {
            *q++ = 0x04;
            buf1 += 2;
            size -= 2;
        } else {
            *q++ = 0;
        }
        *q++ = 0;

        len = FFMIN(max_packet_size - 2, size);


        if (len < size) {
            const uint8_t *end = ff_h263_find_resync_marker_reverse(buf1,
                                                                    buf1 + len);
            len = end - buf1;
        }

        memcpy(q, buf1, len);
        q += len;


        s->timestamp = s->cur_timestamp;
        ff_rtp_send_data(s1, s->buf, q - s->buf, (len == size));

        buf1 += len;
        size -= len;
    }
}
