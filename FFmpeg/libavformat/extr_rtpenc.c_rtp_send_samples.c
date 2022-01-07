
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int max_payload_size; scalar_t__ buf; scalar_t__ buf_ptr; scalar_t__ cur_timestamp; scalar_t__ timestamp; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int av_gcd (int,int) ;
 int ff_rtp_send_data (TYPE_2__*,scalar_t__,scalar_t__,int ) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int rtp_send_samples(AVFormatContext *s1,
                            const uint8_t *buf1, int size, int sample_size_bits)
{
    RTPMuxContext *s = s1->priv_data;
    int len, max_packet_size, n;

    int aligned_samples_size = sample_size_bits/av_gcd(sample_size_bits, 8);

    max_packet_size = (s->max_payload_size / aligned_samples_size) * aligned_samples_size;

    if ((sample_size_bits % 8) == 0 && ((8 * size) % sample_size_bits) != 0)
        return AVERROR(EINVAL);
    n = 0;
    while (size > 0) {
        s->buf_ptr = s->buf;
        len = FFMIN(max_packet_size, size);


        memcpy(s->buf_ptr, buf1, len);
        s->buf_ptr += len;
        buf1 += len;
        size -= len;
        s->timestamp = s->cur_timestamp + n * 8 / sample_size_bits;
        ff_rtp_send_data(s1, s->buf, s->buf_ptr - s->buf, 0);
        n += (s->buf_ptr - s->buf);
    }
    return 0;
}
