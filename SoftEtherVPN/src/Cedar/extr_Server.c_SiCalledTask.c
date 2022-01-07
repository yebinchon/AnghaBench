
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Server; } ;
typedef int SERVER ;
typedef int PACK ;
typedef TYPE_1__ FARM_CONTROLLER ;


 int Debug (char*,char*) ;
 int * NewPack () ;
 int SiCalledCreateHub (int *,int *) ;
 int * SiCalledCreateTicket (int *,int *) ;
 int SiCalledDeleteHub (int *,int *) ;
 int SiCalledDeleteIpTable (int *,int *) ;
 int SiCalledDeleteMacTable (int *,int *) ;
 int SiCalledDeleteSession (int *,int *) ;
 int * SiCalledEnumDhcp (int *,int *) ;
 int SiCalledEnumHub (int *,int *,int *) ;
 int * SiCalledEnumIpTable (int *,int *) ;
 int * SiCalledEnumLogFileList (int *,int *) ;
 int * SiCalledEnumMacTable (int *,int *) ;
 int * SiCalledEnumNat (int *,int *) ;
 int * SiCalledEnumSession (int *,int *) ;
 int * SiCalledGetNatStatus (int *,int *) ;
 int * SiCalledGetSessionStatus (int *,int *) ;
 int * SiCalledReadLogFile (int *,int *) ;
 int SiCalledUpdateHub (int *,int *) ;
 scalar_t__ StrCmpi (char*,char*) ;

PACK *SiCalledTask(FARM_CONTROLLER *f, PACK *p, char *taskname)
{
 PACK *ret;
 SERVER *s;

 if (f == ((void*)0) || p == ((void*)0) || taskname == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ((void*)0);
 s = f->Server;

 if (StrCmpi(taskname, "noop") == 0)
 {

  ret = NewPack();
 }
 else
 {
  Debug("Task Called: [%s].\n", taskname);
  if (StrCmpi(taskname, "createhub") == 0)
  {
   SiCalledCreateHub(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "deletehub") == 0)
  {
   SiCalledDeleteHub(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "enumhub") == 0)
  {
   ret = NewPack();
   SiCalledEnumHub(s, ret, p);
  }
  else if (StrCmpi(taskname, "updatehub") == 0)
  {
   SiCalledUpdateHub(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "createticket") == 0)
  {
   ret = SiCalledCreateTicket(s, p);
  }
  else if (StrCmpi(taskname, "enumnat") == 0)
  {
   ret = SiCalledEnumNat(s, p);
  }
  else if (StrCmpi(taskname, "enumdhcp") == 0)
  {
   ret = SiCalledEnumDhcp(s, p);
  }
  else if (StrCmpi(taskname, "getnatstatus") == 0)
  {
   ret = SiCalledGetNatStatus(s, p);
  }
  else if (StrCmpi(taskname, "enumsession") == 0)
  {
   ret = SiCalledEnumSession(s, p);
  }
  else if (StrCmpi(taskname, "deletesession") == 0)
  {
   SiCalledDeleteSession(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "deletemactable") == 0)
  {
   SiCalledDeleteMacTable(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "deleteiptable") == 0)
  {
   SiCalledDeleteIpTable(s, p);
   ret = NewPack();
  }
  else if (StrCmpi(taskname, "enummactable") == 0)
  {
   ret = SiCalledEnumMacTable(s, p);
  }
  else if (StrCmpi(taskname, "enumiptable") == 0)
  {
   ret = SiCalledEnumIpTable(s, p);
  }
  else if (StrCmpi(taskname, "getsessionstatus") == 0)
  {
   ret = SiCalledGetSessionStatus(s, p);
  }
  else if (StrCmpi(taskname, "enumlogfilelist") == 0)
  {
   ret = SiCalledEnumLogFileList(s, p);
  }
  else if (StrCmpi(taskname, "readlogfile") == 0)
  {
   ret = SiCalledReadLogFile(s, p);
  }
 }

 return ret;
}
