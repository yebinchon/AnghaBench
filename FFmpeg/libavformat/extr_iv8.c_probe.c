
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;

__attribute__((used)) static int probe(const AVProbeData *p)
{

    if( p->buf[0] == 1
       && p->buf[1] == 1
       && p->buf[2] == 3
       && p->buf[3] == 0xB8
       && p->buf[4] == 0x80
       && p->buf[5] == 0x60
      )
        return AVPROBE_SCORE_MAX-2;

    return 0;
}
