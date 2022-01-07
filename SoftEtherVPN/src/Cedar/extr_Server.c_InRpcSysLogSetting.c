
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Hostname; void* Port; void* SaveType; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef int PACK ;


 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSysLogSetting(SYSLOG_SETTING *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(SYSLOG_SETTING));
 t->SaveType = PackGetInt(p, "SaveType");
 t->Port = PackGetInt(p, "Port");
 PackGetStr(p, "Hostname", t->Hostname, sizeof(t->Hostname));
}
