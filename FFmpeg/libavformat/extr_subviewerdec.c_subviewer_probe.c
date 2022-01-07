
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AV_RB24 (unsigned char const*) ;
 int sscanf (unsigned char const*,char*,char*) ;
 int strncmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int subviewer_probe(const AVProbeData *p)
{
    char c;
    const unsigned char *ptr = p->buf;

    if (AV_RB24(ptr) == 0xEFBBBF)
        ptr += 3;
    if (sscanf(ptr, "%*u:%*u:%*u.%*u,%*u:%*u:%*u.%*u%c", &c) == 1)
        return AVPROBE_SCORE_EXTENSION;
    if (!strncmp(ptr, "[INFORMATION]", 13))
        return AVPROBE_SCORE_MAX/3;
    return 0;
}
