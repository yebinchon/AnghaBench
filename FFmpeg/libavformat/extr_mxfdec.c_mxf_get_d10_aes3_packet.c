
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_10__ {int * data; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int channels; int bits_per_coded_sample; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 int av_shrink_packet (TYPE_3__*,int) ;
 int bytestream_get_le32 (int const**) ;
 int bytestream_put_le16 (int **,int) ;
 int bytestream_put_le24 (int **,int) ;

__attribute__((used)) static int mxf_get_d10_aes3_packet(AVIOContext *pb, AVStream *st, AVPacket *pkt, int64_t length)
{
    const uint8_t *buf_ptr, *end_ptr;
    uint8_t *data_ptr;
    int i;

    if (length > 61444)
        return AVERROR_INVALIDDATA;
    length = av_get_packet(pb, pkt, length);
    if (length < 0)
        return length;
    data_ptr = pkt->data;
    end_ptr = pkt->data + length;
    buf_ptr = pkt->data + 4;
    for (; end_ptr - buf_ptr >= st->codecpar->channels * 4; ) {
        for (i = 0; i < st->codecpar->channels; i++) {
            uint32_t sample = bytestream_get_le32(&buf_ptr);
            if (st->codecpar->bits_per_coded_sample == 24)
                bytestream_put_le24(&data_ptr, (sample >> 4) & 0xffffff);
            else
                bytestream_put_le16(&data_ptr, (sample >> 12) & 0xffff);
        }
        buf_ptr += 32 - st->codecpar->channels*4;
    }
    av_shrink_packet(pkt, data_ptr - pkt->data);
    return 0;
}
