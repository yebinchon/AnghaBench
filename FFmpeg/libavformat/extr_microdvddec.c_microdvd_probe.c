
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
 int ff_subtitles_next_line (int const*) ;
 int sscanf (int const*,char*,unsigned char*) ;

__attribute__((used)) static int microdvd_probe(const AVProbeData *p)
{
    unsigned char c;
    const uint8_t *ptr = p->buf;
    int i;

    if (AV_RB24(ptr) == 0xEFBBBF)
        ptr += 3;

    for (i=0; i<3; i++) {
        if (sscanf(ptr, "{%*d}{}%c", &c) != 1 &&
            sscanf(ptr, "{%*d}{%*d}%c", &c) != 1 &&
            sscanf(ptr, "{DEFAULT}{}%c", &c) != 1)
            return 0;
        ptr += ff_subtitles_next_line(ptr);
    }
    return AVPROBE_SCORE_MAX;
}
