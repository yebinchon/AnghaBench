
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL64 (scalar_t__) ;
 scalar_t__ memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int dsf_probe(const AVProbeData *p)
{
    if (p->buf_size < 12 || memcmp(p->buf, "DSD ", 4) || AV_RL64(p->buf + 4) != 28)
        return 0;
    return AVPROBE_SCORE_MAX;
}
