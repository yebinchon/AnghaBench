
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ waitStatus; } ;
typedef TYPE_1__ PGPROC ;


 scalar_t__ STATUS_WAITING ;

bool
IsProcessWaitingForLock(PGPROC *proc)
{
 return proc->waitStatus == STATUS_WAITING;
}
