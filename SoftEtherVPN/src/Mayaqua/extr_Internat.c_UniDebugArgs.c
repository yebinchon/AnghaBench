
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;


 int UniPrintArgs (int *,int ) ;
 int g_debug ;

void UniDebugArgs(wchar_t *fmt, va_list args)
{
 if (g_debug == 0)
 {
  return;
 }

 UniPrintArgs(fmt, args);
}
