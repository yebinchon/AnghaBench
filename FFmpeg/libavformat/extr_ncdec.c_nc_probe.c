
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (scalar_t__) ;
 int AV_RL16 (scalar_t__) ;
 scalar_t__ NC_VIDEO_FLAG ;

__attribute__((used)) static int nc_probe(const AVProbeData *probe_packet)
{
    int size;

    if (AV_RB32(probe_packet->buf) != NC_VIDEO_FLAG)
        return 0;

    size = AV_RL16(probe_packet->buf + 5);

    if (size + 20 > probe_packet->buf_size)
        return AVPROBE_SCORE_MAX/4;

    if (AV_RB32(probe_packet->buf+16+size) == NC_VIDEO_FLAG)
        return AVPROBE_SCORE_MAX;

    return 0;
}
