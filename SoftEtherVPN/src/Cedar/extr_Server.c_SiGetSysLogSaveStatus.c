
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int SaveType; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef int SERVER ;


 int SYSLOG_NONE ;
 int SiGetSysLogSetting (int *,TYPE_1__*) ;

UINT SiGetSysLogSaveStatus(SERVER *s)
{
 SYSLOG_SETTING set;

 if (s == ((void*)0))
 {
  return SYSLOG_NONE;
 }

 SiGetSysLogSetting(s, &set);

 return set.SaveType;
}
