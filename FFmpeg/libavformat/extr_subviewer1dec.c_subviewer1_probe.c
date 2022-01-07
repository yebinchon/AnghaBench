
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 scalar_t__ strstr (unsigned char const*,char*) ;

__attribute__((used)) static int subviewer1_probe(const AVProbeData *p)
{
    const unsigned char *ptr = p->buf;

    if (strstr(ptr, "******** START SCRIPT ********"))
        return AVPROBE_SCORE_EXTENSION;
    return 0;
}
