
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int time_scale; int fc; } ;
struct TYPE_5__ {int time_scale; int ffindex; } ;
typedef TYPE_1__ MOVStreamContext ;
typedef TYPE_2__ MOVContext ;


 int AV_LOG_WARNING ;
 int av_log (int ,int ,char*,int ) ;

__attribute__((used)) static void fix_timescale(MOVContext *c, MOVStreamContext *sc)
{
    if (sc->time_scale <= 0) {
        av_log(c->fc, AV_LOG_WARNING, "stream %d, timescale not set\n", sc->ffindex);
        sc->time_scale = c->time_scale;
        if (sc->time_scale <= 0)
            sc->time_scale = 1;
    }
}
