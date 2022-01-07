
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int Format (char*,int,char*,int ) ;
 int MAX_PATH ;
 int * _UU (char*) ;

wchar_t *GetSyslogSettingName(UINT n)
{
 char tmp[MAX_PATH];

 Format(tmp, sizeof(tmp), "SM_SYSLOG_%u", n);

 return _UU(tmp);
}
