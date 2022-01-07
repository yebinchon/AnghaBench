
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t pgprocno; } ;
struct TYPE_5__ {int* procAdded; scalar_t__ procCount; TYPE_2__** procs; } ;
typedef TYPE_1__ PROCStack ;
typedef TYPE_2__ PGPROC ;


 int Assert (int) ;
 scalar_t__ TotalProcCount () ;

__attribute__((used)) static void
AddProcToVisit(PROCStack *remaining, PGPROC *proc)
{
 if (remaining->procAdded[proc->pgprocno])
 {
  return;
 }

 Assert(remaining->procCount < TotalProcCount());

 remaining->procs[remaining->procCount++] = proc;
 remaining->procAdded[proc->pgprocno] = 1;
}
