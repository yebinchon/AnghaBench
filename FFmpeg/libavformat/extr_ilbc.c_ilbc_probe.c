
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int memcmp (int ,int ,int) ;
 int mode20_header ;

__attribute__((used)) static int ilbc_probe(const AVProbeData *p)
{

    if (!memcmp(p->buf, mode20_header, 6))
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
