
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB16 (scalar_t__) ;
 int AV_RB32 (scalar_t__) ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ MKTAG (char,char,char,char) ;

__attribute__((used)) static int ast_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) != MKTAG('S','T','R','M'))
        return 0;

    if (!AV_RB16(p->buf + 10) ||
        !AV_RB16(p->buf + 12) || AV_RB16(p->buf + 12) > 256 ||
        !AV_RB32(p->buf + 16) || AV_RB32(p->buf + 16) > 8*48000)
        return AVPROBE_SCORE_MAX / 8;

    return AVPROBE_SCORE_MAX / 3 * 2;
}
