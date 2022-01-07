
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (int*) ;

__attribute__((used)) static int aea_read_probe(const AVProbeData *p)
{
    if (p->buf_size <= 2048+212)
        return 0;


    if (AV_RL32(p->buf)==0x800) {
        int ch, i;
        ch = p->buf[264];

        if (ch != 1 && ch != 2)
            return 0;





        for (i = 2048; i + 211 < p->buf_size; i+= 212) {
            int bsm_s, bsm_e, inb_s, inb_e;
            bsm_s = p->buf[0];
            inb_s = p->buf[1];
            inb_e = p->buf[210];
            bsm_e = p->buf[211];

            if (bsm_s != bsm_e || inb_s != inb_e)
                return 0;
        }
        return AVPROBE_SCORE_MAX / 4 + 1;
    }
    return 0;
}
