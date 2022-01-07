
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int userOid; int databaseOid; } ;
typedef TYPE_1__ MaintenanceDaemonDBData ;


 int errcontext (char*,int ,int ) ;

__attribute__((used)) static void
MaintenanceDaemonErrorContext(void *arg)
{
 MaintenanceDaemonDBData *myDbData = (MaintenanceDaemonDBData *) arg;
 errcontext("Citus maintenance daemon for database %u user %u",
      myDbData->databaseOid, myDbData->userOid);
}
