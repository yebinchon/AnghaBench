
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ ff_guidcmp (int ,int ) ;
 int ff_wtv_guid ;

__attribute__((used)) static int read_probe(const AVProbeData *p)
{
    return ff_guidcmp(p->buf, ff_wtv_guid) ? 0 : AVPROBE_SCORE_MAX;
}
