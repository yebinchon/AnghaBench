
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int int64_t ;
struct TYPE_3__ {char* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (char const*) ;
 scalar_t__ TAG_MPCK ;
 int bs_get_v (char const**) ;

__attribute__((used)) static int mpc8_probe(const AVProbeData *p)
{
    const uint8_t *bs = p->buf + 4;
    const uint8_t *bs_end = bs + p->buf_size;
    int64_t size;

    if (p->buf_size < 16)
        return 0;
    if (AV_RL32(p->buf) != TAG_MPCK)
        return 0;
    while (bs < bs_end + 3) {
        int header_found = (bs[0] == 'S' && bs[1] == 'H');
        if (bs[0] < 'A' || bs[0] > 'Z' || bs[1] < 'A' || bs[1] > 'Z')
            return 0;
        bs += 2;
        size = bs_get_v(&bs);
        if (size < 2)
            return 0;
        if (size >= bs_end - bs + 2)
            return AVPROBE_SCORE_EXTENSION - 1;
        if (header_found) {
            if (size < 11 || size > 28)
                return 0;
            if (!AV_RL32(bs))
                return 0;
            return AVPROBE_SCORE_MAX;
        } else {
            bs += size - 2;
        }
    }
    return 0;
}
