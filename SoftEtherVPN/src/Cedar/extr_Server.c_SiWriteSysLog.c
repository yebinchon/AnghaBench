
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int machinename ;
typedef int datetime ;
struct TYPE_3__ {int Syslog; scalar_t__ StrictSyslogDatetimeFormat; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ SERVER ;


 int Debug (char*,int *) ;
 int GSF_DISABLE_SYSLOG ;
 int GetCurrentTimezone () ;
 int GetDateTimeStrMilli (char*,int,int *) ;
 int GetDateTimeStrRFC3339 (char*,int,int *,int ) ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int GetMachineName (char*,int) ;
 int IsEmptyStr (char*) ;
 int LocalTime (int *) ;
 int MAX_HOST_NAME_LEN ;
 int MAX_PATH ;
 int SendSysLog (int ,int *) ;
 int UniFormat (int *,int,char*,char*,char*,char*,char*,...) ;

void SiWriteSysLog(SERVER *s, char *typestr, char *hubname, wchar_t *message)
{
 wchar_t tmp[1024];
 char machinename[MAX_HOST_NAME_LEN + 1];
 char datetime[MAX_PATH];
 SYSTEMTIME st;

 if (s == ((void*)0) || typestr == ((void*)0) || message == ((void*)0))
 {
  return;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_SYSLOG) != 0)
 {
  return;
 }


 GetMachineName(machinename, sizeof(machinename));


 LocalTime(&st);
 if(s->StrictSyslogDatetimeFormat){
  GetDateTimeStrRFC3339(datetime, sizeof(datetime), &st, GetCurrentTimezone());
 }else{
  GetDateTimeStrMilli(datetime, sizeof(datetime), &st);
 }

 if (IsEmptyStr(hubname) == 0)
 {
  UniFormat(tmp, sizeof(tmp), L"[%S/VPN/%S] (%S) <%S>: %s",
   machinename, hubname, datetime, typestr, message);
 }
 else
 {
  UniFormat(tmp, sizeof(tmp), L"[%S/VPN] (%S) <%S>: %s",
   machinename, datetime, typestr, message);
 }

 Debug("Syslog send: %S\n",tmp);

 SendSysLog(s->Syslog, tmp);
}
