
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_port {scalar_t__ bp_active; int bp_rtagetask; int bp_statetask; } ;


 int KASSERT (int,char*) ;
 int bstp_task_drain (int *) ;

void
bstp_destroy(struct bstp_port *bp)
{
 KASSERT(bp->bp_active == 0, ("port is still attached"));
 bstp_task_drain(&bp->bp_statetask);
 bstp_task_drain(&bp->bp_rtagetask);
}
