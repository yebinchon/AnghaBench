
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_prg; TYPE_1__* prg; } ;
struct TYPE_5__ {unsigned int id; scalar_t__ pmt_found; scalar_t__ nb_pids; } ;
typedef TYPE_2__ MpegTSContext ;


 int clear_avprogram (TYPE_2__*,unsigned int) ;

__attribute__((used)) static void clear_program(MpegTSContext *ts, unsigned int programid)
{
    int i;

    clear_avprogram(ts, programid);
    for (i = 0; i < ts->nb_prg; i++)
        if (ts->prg[i].id == programid) {
            ts->prg[i].nb_pids = 0;
            ts->prg[i].pmt_found = 0;
        }
}
