
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int sscanf (unsigned char const*,char*,char*) ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static int vplayer_probe(const AVProbeData *p)
{
    char c;
    const unsigned char *ptr = p->buf;

    if ((sscanf(ptr, "%*3d:%*2d:%*2d.%*2d%c", &c) == 1 ||
         sscanf(ptr, "%*3d:%*2d:%*2d%c", &c) == 1) && strchr(": =", c))
        return AVPROBE_SCORE_MAX;
    return 0;
}
