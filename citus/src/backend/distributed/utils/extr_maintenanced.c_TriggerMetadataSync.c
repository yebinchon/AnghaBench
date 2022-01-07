
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int triggerMetadataSync; int latch; } ;
typedef int Oid ;
typedef TYPE_1__ MaintenanceDaemonDBData ;


 int HASH_FIND ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* MaintenanceDaemonControl ;
 int MaintenanceDaemonDBHash ;
 int SetLatch (int ) ;
 scalar_t__ hash_search (int ,int *,int ,int*) ;

void
TriggerMetadataSync(Oid databaseId)
{
 bool found = 0;
 MaintenanceDaemonDBData *dbData = ((void*)0);

 LWLockAcquire(&MaintenanceDaemonControl->lock, LW_EXCLUSIVE);

 dbData = (MaintenanceDaemonDBData *) hash_search(MaintenanceDaemonDBHash,
              &databaseId, HASH_FIND, &found);
 if (found)
 {
  dbData->triggerMetadataSync = 1;


  SetLatch(dbData->latch);
 }

 LWLockRelease(&MaintenanceDaemonControl->lock);
}
