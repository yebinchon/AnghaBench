
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* pids; } ;
typedef TYPE_1__ MpegTSContext ;


 int NB_PID_MAX ;
 int clear_programs (TYPE_1__*) ;
 int mpegts_close_filter (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void mpegts_free(MpegTSContext *ts)
{
    int i;

    clear_programs(ts);

    for (i = 0; i < NB_PID_MAX; i++)
        if (ts->pids[i])
            mpegts_close_filter(ts, ts->pids[i]);
}
