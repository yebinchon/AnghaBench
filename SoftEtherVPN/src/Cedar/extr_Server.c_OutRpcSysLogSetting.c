
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Hostname; int Port; int SaveType; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcSysLogSetting(PACK *p, SYSLOG_SETTING *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "SaveType", t->SaveType);
 PackAddInt(p, "Port", t->Port);
 PackAddStr(p, "Hostname", t->Hostname);
}
