
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int triggerMetadataSync; } ;
typedef TYPE_1__ MaintenanceDaemonDBData ;


 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_3__* MaintenanceDaemonControl ;

__attribute__((used)) static bool
MetadataSyncTriggeredCheckAndReset(MaintenanceDaemonDBData *dbData)
{
 bool metadataSyncTriggered = 0;

 LWLockAcquire(&MaintenanceDaemonControl->lock, LW_EXCLUSIVE);

 metadataSyncTriggered = dbData->triggerMetadataSync;
 dbData->triggerMetadataSync = 0;

 LWLockRelease(&MaintenanceDaemonControl->lock);

 return metadataSyncTriggered;
}
