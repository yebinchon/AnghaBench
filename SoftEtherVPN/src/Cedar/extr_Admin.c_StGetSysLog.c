
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int ServerAdmin; int * Server; } ;
struct TYPE_6__ {scalar_t__ SaveType; scalar_t__ Port; int Hostname; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef int SERVER ;
typedef TYPE_2__ ADMIN ;


 int ERR_NO_ERROR ;
 scalar_t__ SYSLOG_NONE ;
 int SiGetSysLogSetting (int *,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;

UINT StGetSysLog(ADMIN *a, SYSLOG_SETTING *t)
{
 SERVER *s = a->Server;

 SiGetSysLogSetting(s, t);

 if (a->ServerAdmin == 0)
 {

  if (t->SaveType == SYSLOG_NONE)
  {
   StrCpy(t->Hostname, sizeof(t->Hostname), "");
   t->Port = 0;
  }
  else
  {
   StrCpy(t->Hostname, sizeof(t->Hostname), "Secret");
   t->Port = 0;
  }
 }

 return ERR_NO_ERROR;
}
