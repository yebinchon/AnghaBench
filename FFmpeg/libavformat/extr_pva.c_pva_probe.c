
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int pva_check (unsigned char const*) ;

__attribute__((used)) static int pva_probe(const AVProbeData * pd) {
    const unsigned char *buf = pd->buf;
    int len = pva_check(buf);

    if (len < 0)
        return 0;

    if (pd->buf_size >= len + 8 &&
        pva_check(buf + len) >= 0)
        return AVPROBE_SCORE_EXTENSION;

    return AVPROBE_SCORE_MAX / 4;
}
