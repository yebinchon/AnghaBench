
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB24 (int const*) ;
 scalar_t__ strchr (char*,int const) ;
 int strncmp (int const*,char*,int) ;

__attribute__((used)) static int webvtt_probe(const AVProbeData *p)
{
    const uint8_t *ptr = p->buf;

    if (AV_RB24(ptr) == 0xEFBBBF)
        ptr += 3;
    if (!strncmp(ptr, "WEBVTT", 6) &&
        (!ptr[6] || strchr("\n\r\t ", ptr[6])))
        return AVPROBE_SCORE_MAX;
    return 0;
}
