
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; float* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL16 (char*) ;

__attribute__((used)) static int frm_read_probe(const AVProbeData *p)
{
    if (p->buf_size > 8 &&
        p->buf[0] == 'F' && p->buf[1] == 'R' && p->buf[2] == 'M' &&
        AV_RL16(&p->buf[4]) && AV_RL16(&p->buf[6]))
        return AVPROBE_SCORE_MAX / 4;
    return 0;
}
