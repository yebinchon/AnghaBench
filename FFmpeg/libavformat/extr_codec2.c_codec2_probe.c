
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* buf; } ;
typedef TYPE_1__ AVProbeData ;


 scalar_t__ AVPRIV_CODEC2_MAGIC ;
 int AVPROBE_SCORE_EXTENSION ;
 scalar_t__ AV_RB24 (scalar_t__*) ;
 scalar_t__ EXPECTED_CODEC2_MAJOR_VERSION ;
 scalar_t__ EXPECTED_CODEC2_MINOR_VERSION ;

__attribute__((used)) static int codec2_probe(const AVProbeData *p)
{

    if (AV_RB24(p->buf) != AVPRIV_CODEC2_MAGIC) {
        return 0;
    }



    if (p->buf[3] != EXPECTED_CODEC2_MAJOR_VERSION ||
        p->buf[4] < EXPECTED_CODEC2_MINOR_VERSION) {
        return 0;
    }


    return AVPROBE_SCORE_EXTENSION + 1;
}
