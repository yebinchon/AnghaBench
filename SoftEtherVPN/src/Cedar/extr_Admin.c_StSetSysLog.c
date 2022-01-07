
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int * Server; } ;
struct TYPE_7__ {scalar_t__ SaveType; } ;
typedef TYPE_1__ SYSLOG_SETTING ;
typedef int SERVER ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE ;
 int ERR_NO_ERROR ;
 int GSF_DISABLE_SYSLOG ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int GetServerCapsBool (int *,char*) ;
 int IncrementServerConfigRevision (int *) ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ SYSLOG_NONE ;
 int SiSetSysLogSetting (int *,TYPE_1__*) ;

UINT StSetSysLog(ADMIN *a, SYSLOG_SETTING *t)
{
 SERVER *s = a->Server;

 SERVER_ADMIN_ONLY;

 if (GetGlobalServerFlag(GSF_DISABLE_SYSLOG) != 0 && t->SaveType != SYSLOG_NONE)
 {
  return ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE;
 }

 if (GetServerCapsBool(s, "b_support_syslog") == 0)
 {
  return ERR_NOT_SUPPORTED;
 }

 SiSetSysLogSetting(s, t);

 IncrementServerConfigRevision(s);
 ALog(a, ((void*)0), "LA_SET_SYSLOG");

 return ERR_NO_ERROR;
}
