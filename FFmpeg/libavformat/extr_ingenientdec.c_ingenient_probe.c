
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB16 (char*) ;
 scalar_t__ AV_RN32 (char*) ;

__attribute__((used)) static int ingenient_probe(const AVProbeData *p)
{
    if ( AV_RN32(p->buf) != AV_RN32("MJPG")
        || p->buf_size < 50
        || AV_RB16(p->buf + 48) != 0xffd8)
        return 0;
    return AVPROBE_SCORE_MAX * 3 / 4;
}
