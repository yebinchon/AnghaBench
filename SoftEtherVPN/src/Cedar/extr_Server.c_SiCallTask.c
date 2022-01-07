
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_6__ {TYPE_1__* Cedar; int hostname; } ;
struct TYPE_5__ {int Server; } ;
typedef int PACK ;
typedef TYPE_2__ FARM_MEMBER ;


 int Debug (char*,char*,int ) ;
 int Format (char*,int,char*,char*,int ) ;
 int MAX_PATH ;
 int PackAddStr (int *,char*,char*) ;
 int SiDebugLog (int ,char*) ;
 int * SiExecTask (TYPE_2__*,int *) ;

PACK *SiCallTask(FARM_MEMBER *f, PACK *p, char *taskname)
{
 PACK *ret;
 char tmp[MAX_PATH];

 if (f == ((void*)0) || p == ((void*)0) || taskname == ((void*)0))
 {
  return ((void*)0);
 }

 PackAddStr(p, "taskname", taskname);

 Debug("Call Task [%s] (%s)\n", taskname, f->hostname);

 Format(tmp, sizeof(tmp), "CLUSTER_CALL: Entering Call [%s] to %s", taskname, f->hostname);
 SiDebugLog(f->Cedar->Server, tmp);

 ret = SiExecTask(f, p);

 Format(tmp, sizeof(tmp), "CLUSTER_CALL: Leaving Call [%s] to %s", taskname, f->hostname);
 SiDebugLog(f->Cedar->Server, tmp);

 return ret;
}
