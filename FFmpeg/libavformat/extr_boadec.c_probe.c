
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (scalar_t__) ;
 int AV_RL32 (scalar_t__) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    if (p->buf_size < 2096)
        return 0;
    if ( AV_RL32(p->buf ) != 1
        || AV_RL32(p->buf + 8) > 100000
        || AV_RL32(p->buf + 12) > 8
        || AV_RL32(p->buf + 16) != 2096
        ||!AV_RL32(p->buf + 21)
        || AV_RL16(p->buf + 25) != 2096
        || AV_RL32(p->buf + 48) % AV_RL32(p->buf + 21)
        )
        return 0;
    return AVPROBE_SCORE_EXTENSION;
}
