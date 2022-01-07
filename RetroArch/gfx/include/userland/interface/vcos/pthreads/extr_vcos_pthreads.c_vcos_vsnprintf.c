
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vsnprintf (char*,size_t,char const*,int ) ;

int vcos_vsnprintf( char *buf, size_t buflen, const char *fmt, va_list ap )
{
   return vsnprintf( buf, buflen, fmt, ap );
}
