
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;


 int Free (int *) ;
 int * InternalFormatArgs (int *,int ,int) ;
 int UniPrintStr (int *) ;

void UniPrintArgs(wchar_t *fmt, va_list args)
{
 wchar_t *str;

 if (fmt == ((void*)0))
 {
  return;
 }

 str = InternalFormatArgs(fmt, args, 0);

 UniPrintStr(str);

 Free(str);
}
