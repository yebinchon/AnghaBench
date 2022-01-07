
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (int *) ;
 int AV_RL32 (int *) ;
 int MKTAG (char,char,char,char) ;
 int WV_BLOCK_LIMIT ;

__attribute__((used)) static int wv_probe(const AVProbeData *p)
{

    if (p->buf_size <= 32)
        return 0;
    if (AV_RL32(&p->buf[0]) == MKTAG('w', 'v', 'p', 'k') &&
        AV_RL32(&p->buf[4]) >= 24 &&
        AV_RL32(&p->buf[4]) <= WV_BLOCK_LIMIT &&
        AV_RL16(&p->buf[8]) >= 0x402 &&
        AV_RL16(&p->buf[8]) <= 0x410)
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
