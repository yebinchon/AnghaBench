
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {TYPE_1__* Server; } ;
struct TYPE_6__ {int Logger; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ CEDAR ;


 int InsertUnicodeRecord (int ,int *) ;
 scalar_t__ IsDebug () ;
 scalar_t__ SYSLOG_NONE ;
 scalar_t__ SiGetSysLogSaveStatus (TYPE_1__*) ;
 int SiWriteSysLog (TYPE_1__*,char*,int *,int *) ;
 int UniPrint (char*,int *) ;

void WriteServerLog(CEDAR *c, wchar_t *str)
{
 SERVER *s;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 s = c->Server;
 if (s == ((void*)0))
 {
  return;
 }

 if (IsDebug())
 {
  UniPrint(L"LOG: %s\n", str);
 }

 if (SiGetSysLogSaveStatus(s) != SYSLOG_NONE)
 {
  SiWriteSysLog(s, "SERVER_LOG", ((void*)0), str);
 }
 else
 {
  InsertUnicodeRecord(s->Logger, str);
 }
}
