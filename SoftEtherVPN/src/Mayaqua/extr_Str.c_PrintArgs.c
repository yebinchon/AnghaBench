
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int va_list ;


 char* CopyStrToUni (char*) ;
 char* CopyUniToStr (char*) ;
 int Free (char*) ;
 char* InternalFormatArgs (char*,int ,int) ;
 int PrintStr (char*) ;

void PrintArgs(char *fmt, va_list args)
{
 wchar_t *ret;
 wchar_t *fmt_wchar;
 char *tmp;

 if (fmt == ((void*)0))
 {
  return;
 }

 fmt_wchar = CopyStrToUni(fmt);
 ret = InternalFormatArgs(fmt_wchar, args, 1);

 tmp = CopyUniToStr(ret);
 PrintStr(tmp);
 Free(tmp);

 Free(ret);
 Free(fmt_wchar);
}
