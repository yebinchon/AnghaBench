
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__* gme_identify_header (int ) ;

__attribute__((used)) static int probe_gme(const AVProbeData *p)
{

    if (gme_identify_header(p->buf)[0]) {
        if (p->buf_size < 16384)
            return AVPROBE_SCORE_MAX / 4 ;
        else
            return AVPROBE_SCORE_MAX / 2;
    }
    return 0;
}
