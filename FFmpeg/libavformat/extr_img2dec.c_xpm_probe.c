
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB64 (char const*) ;

__attribute__((used)) static int xpm_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    if (AV_RB64(b) == 0x2f2a2058504d202a && *(b+8) == '/')
        return AVPROBE_SCORE_MAX - 1;
    return 0;
}
