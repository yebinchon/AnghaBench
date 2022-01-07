
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;

__attribute__((used)) static int gsm_probe(const AVProbeData *p)
{
    int valid = 0, invalid = 0;
    uint8_t *b = p->buf;
    while (b < p->buf + p->buf_size - 32) {
        if ((*b & 0xf0) == 0xd0) {
            valid++;
        } else {
            invalid++;
        }
        b += 33;
    }
    if (valid >> 5 > invalid)
        return AVPROBE_SCORE_EXTENSION + 1;
    return 0;
}
