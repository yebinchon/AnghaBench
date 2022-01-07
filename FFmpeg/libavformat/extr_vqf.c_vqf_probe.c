
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 int MKTAG (char,char,char,char) ;
 int memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int vqf_probe(const AVProbeData *probe_packet)
{
    if (AV_RL32(probe_packet->buf) != MKTAG('T','W','I','N'))
        return 0;

    if (!memcmp(probe_packet->buf + 4, "97012000", 8))
        return AVPROBE_SCORE_MAX;

    if (!memcmp(probe_packet->buf + 4, "00052200", 8))
        return AVPROBE_SCORE_MAX;

    if (AV_RL32(probe_packet->buf + 12) > (1<<27))
        return AVPROBE_SCORE_EXTENSION/2;

    return AVPROBE_SCORE_EXTENSION;
}
