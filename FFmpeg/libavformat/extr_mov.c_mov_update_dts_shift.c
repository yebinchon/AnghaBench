
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dts_shift; } ;
typedef TYPE_1__ MOVStreamContext ;


 int AV_LOG_WARNING ;
 int FFMAX (int ,int) ;
 int INT_MAX ;
 int INT_MIN ;
 int av_log (void*,int ,char*,int ) ;

__attribute__((used)) static void mov_update_dts_shift(MOVStreamContext *sc, int duration, void *logctx)
{
    if (duration < 0) {
        if (duration == INT_MIN) {
            av_log(logctx, AV_LOG_WARNING, "mov_update_dts_shift(): dts_shift set to %d\n", INT_MAX);
            duration++;
        }
        sc->dts_shift = FFMAX(sc->dts_shift, -duration);
    }
}
