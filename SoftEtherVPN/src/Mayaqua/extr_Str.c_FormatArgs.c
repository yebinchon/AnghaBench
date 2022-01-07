
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef int UINT ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int * InternalFormatArgs (int *,int ,int) ;
 int UniToStr (char*,int ,int *) ;

void FormatArgs(char *buf, UINT size, char *fmt, va_list args)
{
 wchar_t *tag;
 wchar_t *ret;

 if (buf == ((void*)0) || fmt == ((void*)0))
 {
  return;
 }

 tag = CopyStrToUni(fmt);
 ret = InternalFormatArgs(tag, args, 1);

 UniToStr(buf, size, ret);
 Free(ret);
 Free(tag);
}
