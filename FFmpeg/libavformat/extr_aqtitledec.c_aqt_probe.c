
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int aqt_probe(const AVProbeData *p)
{
    int frame;
    const char *ptr = p->buf;

    if (sscanf(ptr, "-->> %d", &frame) == 1)
        return AVPROBE_SCORE_EXTENSION;
    return 0;
}
