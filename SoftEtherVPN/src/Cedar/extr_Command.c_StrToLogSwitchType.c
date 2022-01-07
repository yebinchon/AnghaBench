
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int INFINITE ;
 scalar_t__ IsEmptyStr (char*) ;
 int LOG_SWITCH_DAY ;
 int LOG_SWITCH_HOUR ;
 int LOG_SWITCH_MINUTE ;
 int LOG_SWITCH_MONTH ;
 int LOG_SWITCH_NO ;
 int LOG_SWITCH_SECOND ;
 scalar_t__ StartWith (char*,char*) ;

UINT StrToLogSwitchType(char *str)
{
 UINT ret = INFINITE;

 if (str == ((void*)0))
 {
  return INFINITE;
 }

 if (IsEmptyStr(str) || StartWith("none", str))
 {
  ret = LOG_SWITCH_NO;
 }
 else if (StartWith("second", str))
 {
  ret = LOG_SWITCH_SECOND;
 }
 else if (StartWith("minute", str))
 {
  ret = LOG_SWITCH_MINUTE;
 }
 else if (StartWith("hour", str))
 {
  ret = LOG_SWITCH_HOUR;
 }
 else if (StartWith("day", str))
 {
  ret = LOG_SWITCH_DAY;
 }
 else if (StartWith("month", str))
 {
  ret = LOG_SWITCH_MONTH;
 }

 return ret;
}
