
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (char*) ;

__attribute__((used)) static int sol_probe(const AVProbeData *p)
{

    uint16_t magic = AV_RL32(p->buf);
    if ((magic == 0x0B8D || magic == 0x0C0D || magic == 0x0C8D) &&
        p->buf[2] == 'S' && p->buf[3] == 'O' &&
        p->buf[4] == 'L' && p->buf[5] == 0)
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
