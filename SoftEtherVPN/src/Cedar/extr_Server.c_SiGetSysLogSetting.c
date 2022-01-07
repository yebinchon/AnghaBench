
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SyslogSetting; } ;
typedef int SYSLOG_SETTING ;
typedef TYPE_1__ SERVER ;


 int Copy (int *,int *,int) ;

void SiGetSysLogSetting(SERVER *s, SYSLOG_SETTING *setting)
{

 if (s == ((void*)0) || setting == ((void*)0))
 {
  return;
 }


 {
  Copy(setting, &s->SyslogSetting, sizeof(SYSLOG_SETTING));
 }

}
