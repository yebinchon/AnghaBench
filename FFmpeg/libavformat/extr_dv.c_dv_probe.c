
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 unsigned int AV_RB32 (scalar_t__) ;

__attribute__((used)) static int dv_probe(const AVProbeData *p)
{
    unsigned marker_pos = 0;
    int i;
    int matches = 0;
    int firstmatch = 0;
    int secondary_matches = 0;

    if (p->buf_size < 5)
        return 0;

    for (i = 0; i < p->buf_size-4; i++) {
        unsigned state = AV_RB32(p->buf+i);
        if ((state & 0x0007f840) == 0x00070000) {


            if ((state & 0xff07ff7f) == 0x1f07003f) {
                secondary_matches++;
                if ((state & 0xffffff7f) == 0x1f07003f) {
                    matches++;
                    if (!i)
                        firstmatch = 1;
                }
            }
            if (state == 0x003f0700 || state == 0xff3f0700)
                marker_pos = i;
            if (state == 0xff3f0701 && i - marker_pos == 80)
                matches++;
        }
    }

    if (matches && p->buf_size / matches < 1024 * 1024) {
        if (matches > 4 || firstmatch ||
            (secondary_matches >= 10 &&
             p->buf_size / secondary_matches < 24000))

            return AVPROBE_SCORE_MAX * 3 / 4;
        return AVPROBE_SCORE_MAX / 4;
    }
    return 0;
}
