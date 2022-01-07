
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int buf_size; int filename; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (char*) ;
 int AV_RL24 (char*) ;
 scalar_t__ AV_RL32 (char*) ;
 scalar_t__ av_match_ext (int ,char*) ;

__attribute__((used)) static int nsv_probe(const AVProbeData *p)
{
    int i, score = 0;



    if (p->buf[0] == 'N' && p->buf[1] == 'S' &&
        p->buf[2] == 'V' && (p->buf[3] == 'f' || p->buf[3] == 's'))
        return AVPROBE_SCORE_MAX;




    for (i = 1; i < p->buf_size - 3; i++) {
        if (AV_RL32(p->buf + i) == AV_RL32("NSVs")) {

            int vsize = AV_RL24(p->buf+i+19) >> 4;
            int asize = AV_RL16(p->buf+i+22);
            int offset = i + 23 + asize + vsize + 1;
            if (offset <= p->buf_size - 2 && AV_RL16(p->buf + offset) == 0xBEEF)
                return 4*AVPROBE_SCORE_MAX/5;
            score = AVPROBE_SCORE_MAX/5;
        }
    }

    if (av_match_ext(p->filename, "nsv"))
        return AVPROBE_SCORE_EXTENSION;

    return score;
}
