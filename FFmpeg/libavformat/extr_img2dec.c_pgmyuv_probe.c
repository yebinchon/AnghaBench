
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ AVProbeData ;


 scalar_t__ av_match_ext (int ,char*) ;
 int pgmx_probe (TYPE_1__ const*) ;

__attribute__((used)) static int pgmyuv_probe(const AVProbeData *p)
{
    int ret = pgmx_probe(p);
    return ret && av_match_ext(p->filename, "pgmyuv") ? ret : 0;
}
