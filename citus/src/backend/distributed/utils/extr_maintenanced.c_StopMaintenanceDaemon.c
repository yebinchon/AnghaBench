
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {scalar_t__ workerPid; } ;
typedef int Oid ;
typedef TYPE_1__ MaintenanceDaemonDBData ;


 int HASH_REMOVE ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* MaintenanceDaemonControl ;
 int MaintenanceDaemonDBHash ;
 int SIGTERM ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;
 int kill (scalar_t__,int ) ;

void
StopMaintenanceDaemon(Oid databaseId)
{
 bool found = 0;
 MaintenanceDaemonDBData *dbData = ((void*)0);
 pid_t workerPid = 0;

 LWLockAcquire(&MaintenanceDaemonControl->lock, LW_EXCLUSIVE);

 dbData = (MaintenanceDaemonDBData *) hash_search(MaintenanceDaemonDBHash,
              &databaseId, HASH_REMOVE, &found);
 if (found)
 {
  workerPid = dbData->workerPid;
 }

 LWLockRelease(&MaintenanceDaemonControl->lock);

 if (workerPid > 0)
 {
  kill(workerPid, SIGTERM);
 }
}
