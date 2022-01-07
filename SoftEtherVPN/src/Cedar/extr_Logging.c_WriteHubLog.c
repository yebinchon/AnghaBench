
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int buf ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int * Server; } ;
struct TYPE_5__ {int SaveSecurityLog; } ;
struct TYPE_6__ {int SecurityLogger; int Name; TYPE_1__ LogSetting; TYPE_3__* Cedar; } ;
typedef int SERVER ;
typedef TYPE_2__ HUB ;


 int InsertUnicodeRecord (int ,int *) ;
 int MAX_SIZE ;
 scalar_t__ SYSLOG_NONE ;
 scalar_t__ SYSLOG_SERVER_AND_HUB_ALL_LOG ;
 scalar_t__ SYSLOG_SERVER_AND_HUB_SECURITY_LOG ;
 scalar_t__ SiGetSysLogSaveStatus (int *) ;
 int SiWriteSysLog (int *,char*,int ,int *) ;
 int UniFormat (int *,int,char*,int ,int *) ;
 int WriteServerLog (TYPE_3__*,int *) ;

void WriteHubLog(HUB *h, wchar_t *str)
{
 wchar_t buf[MAX_SIZE * 2];
 UINT syslog_status;
 SERVER *s;

 if (h == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 s = h->Cedar->Server;
 syslog_status = SiGetSysLogSaveStatus(s);

 UniFormat(buf, sizeof(buf), L"[HUB \"%S\"] %s", h->Name, str);

 if (syslog_status == SYSLOG_NONE)
 {
  WriteServerLog(h->Cedar, buf);
 }

 if (h->LogSetting.SaveSecurityLog == 0)
 {
  return;
 }

 if (syslog_status == SYSLOG_SERVER_AND_HUB_SECURITY_LOG
  || syslog_status == SYSLOG_SERVER_AND_HUB_ALL_LOG)
 {
  SiWriteSysLog(s, "SECURITY_LOG", h->Name, str);
 }
 else
 {
  InsertUnicodeRecord(h->SecurityLogger, str);
 }
}
