
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* backends; } ;
struct TYPE_11__ {int mutex; } ;
struct TYPE_10__ {int pgprocno; TYPE_1__* lockGroupLeader; } ;
struct TYPE_9__ {int pgprocno; } ;
typedef TYPE_2__ PGPROC ;
typedef TYPE_3__ BackendData ;


 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_6__* backendManagementShmemData ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

void
GetBackendDataForProc(PGPROC *proc, BackendData *result)
{
 BackendData *backendData = ((void*)0);
 int pgprocno = proc->pgprocno;

 if (proc->lockGroupLeader != ((void*)0))
 {
  pgprocno = proc->lockGroupLeader->pgprocno;
 }

 backendData = &backendManagementShmemData->backends[pgprocno];

 SpinLockAcquire(&backendData->mutex);

 memcpy(result, backendData, sizeof(BackendData));

 SpinLockRelease(&backendData->mutex);
}
