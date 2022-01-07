
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int PrintArgs (char*,int ) ;
 int g_debug ;

void DebugArgs(char *fmt, va_list args)
{

 if (fmt == ((void*)0))
 {
  return;
 }
 if (g_debug == 0)
 {
  return;
 }

 PrintArgs(fmt, args);
}
