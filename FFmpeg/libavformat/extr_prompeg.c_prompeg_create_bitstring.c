
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int packet_size; int length_recovery; int bitstring_size; } ;
typedef TYPE_2__ PrompegContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_WB16 (int*,int ) ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (TYPE_1__*,int ,char*) ;
 int* av_malloc (int ) ;
 int memcpy (int*,int const*,int ) ;

__attribute__((used)) static int prompeg_create_bitstring(URLContext *h, const uint8_t *buf, int size,
        uint8_t **bitstring) {
    PrompegContext *s = h->priv_data;
    uint8_t *b;

    if (size < 12 || (buf[0] & 0xc0) != 0x80 || (buf[1] & 0x7f) != 0x21) {
        av_log(h, AV_LOG_ERROR, "Unsupported stream format (expected MPEG-TS over RTP)\n");
        return AVERROR(EINVAL);
    }
    if (size != s->packet_size) {
        av_log(h, AV_LOG_ERROR, "The RTP packet size must be constant (set pkt_size)\n");
        return AVERROR(EINVAL);
    }

    *bitstring = av_malloc(s->bitstring_size);
    if (!*bitstring) {
        av_log(h, AV_LOG_ERROR, "Failed to allocate the bitstring buffer\n");
        return AVERROR(ENOMEM);
    }
    b = *bitstring;


    b[0] = buf[0] & 0x3f;

    b[1] = buf[1];

    b[2] = buf[4];
    b[3] = buf[5];
    b[4] = buf[6];
    b[5] = buf[7];




    AV_WB16(b + 6, s->length_recovery);

    memcpy(b + 8, buf + 12, s->length_recovery);

    return 0;
}
