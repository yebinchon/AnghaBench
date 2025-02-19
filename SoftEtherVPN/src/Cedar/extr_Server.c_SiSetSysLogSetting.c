
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int set ;
struct TYPE_8__ {scalar_t__ Port; int Hostname; int SaveType; } ;
struct TYPE_9__ {int SyslogLock; int Syslog; TYPE_1__ SyslogSetting; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef TYPE_2__ SERVER ;


 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ IsEmptyStr (int ) ;
 int Lock (int ) ;
 int SYSLOG_NONE ;
 int SetSysLog (int ,int ,scalar_t__) ;
 int Unlock (int ) ;
 int Zero (TYPE_1__*,int) ;

void SiSetSysLogSetting(SERVER *s, SYSLOG_SETTING *setting)
{
 SYSLOG_SETTING set;

 if (s == ((void*)0) || setting == ((void*)0))
 {
  return;
 }

 Zero(&set, sizeof(set));
 Copy(&set, setting, sizeof(SYSLOG_SETTING));

 if (IsEmptyStr(set.Hostname) || set.Port == 0)
 {
  set.SaveType = SYSLOG_NONE;
 }

 Lock(s->SyslogLock);
 {
  Copy(&s->SyslogSetting, &set, sizeof(SYSLOG_SETTING));

  SetSysLog(s->Syslog, set.Hostname, set.Port);
 }
 Unlock(s->SyslogLock);
}
