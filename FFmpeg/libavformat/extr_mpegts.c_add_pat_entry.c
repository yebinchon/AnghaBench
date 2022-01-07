
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Program {unsigned int id; scalar_t__ pmt_found; scalar_t__ nb_pids; } ;
struct TYPE_3__ {int nb_prg; struct Program* prg; } ;
typedef TYPE_1__ MpegTSContext ;


 scalar_t__ av_reallocp_array (struct Program**,int,int) ;

__attribute__((used)) static void add_pat_entry(MpegTSContext *ts, unsigned int programid)
{
    struct Program *p;
    if (av_reallocp_array(&ts->prg, ts->nb_prg + 1, sizeof(*ts->prg)) < 0) {
        ts->nb_prg = 0;
        return;
    }
    p = &ts->prg[ts->nb_prg];
    p->id = programid;
    p->nb_pids = 0;
    p->pmt_found = 0;
    ts->nb_prg++;
}
