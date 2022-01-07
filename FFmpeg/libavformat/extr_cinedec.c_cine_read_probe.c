
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (char*) ;
 int AV_RL32 (char*) ;
 int CC_UNINT ;

__attribute__((used)) static int cine_read_probe(const AVProbeData *p)
{
    int HeaderSize;
    if (p->buf[0] == 'C' && p->buf[1] == 'I' &&
        (HeaderSize = AV_RL16(p->buf + 2)) >= 0x2C &&
        AV_RL16(p->buf + 4) <= CC_UNINT &&
        AV_RL16(p->buf + 6) <= 1 &&
        AV_RL32(p->buf + 20) &&
        AV_RL32(p->buf + 24) >= HeaderSize &&
        AV_RL32(p->buf + 28) >= HeaderSize &&
        AV_RL32(p->buf + 32) >= HeaderSize)
        return AVPROBE_SCORE_MAX;
    return 0;
}
