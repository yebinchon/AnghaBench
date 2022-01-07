
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; size_t buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AVPROBE_SCORE_RETRY ;
 int AV_RB16 (unsigned char*) ;
 int SUP_PGS_MAGIC ;

__attribute__((used)) static int sup_probe(const AVProbeData *p)
{
    unsigned char *buf = p->buf;
    size_t buf_size = p->buf_size;
    int nb_packets;

    for (nb_packets = 0; nb_packets < 10; nb_packets++) {
        size_t full_packet_size;
        if (buf_size < 10 + 3)
            break;
        if (AV_RB16(buf) != SUP_PGS_MAGIC)
            return 0;
        full_packet_size = AV_RB16(buf + 10 + 1) + 10 + 3;
        if (buf_size < full_packet_size)
            break;
        buf += full_packet_size;
        buf_size -= full_packet_size;
    }
    if (!nb_packets)
        return 0;
    if (nb_packets < 2)
        return AVPROBE_SCORE_RETRY / 2;
    if (nb_packets < 4)
        return AVPROBE_SCORE_RETRY;
    if (nb_packets < 10)
        return AVPROBE_SCORE_EXTENSION;
    return AVPROBE_SCORE_MAX;
}
