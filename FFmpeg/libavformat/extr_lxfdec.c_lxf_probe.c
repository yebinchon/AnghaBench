
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int LXF_IDENT ;
 int LXF_IDENT_LENGTH ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static int lxf_probe(const AVProbeData *p)
{
    if (!memcmp(p->buf, LXF_IDENT, LXF_IDENT_LENGTH))
        return AVPROBE_SCORE_MAX;

    return 0;
}
