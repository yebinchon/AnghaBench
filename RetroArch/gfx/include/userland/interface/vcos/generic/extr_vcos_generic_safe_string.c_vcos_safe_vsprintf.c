
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ vcos_vsnprintf (char*,size_t,char const*,int ) ;

size_t vcos_safe_vsprintf(char *buf, size_t buflen, size_t offset, const char *fmt, va_list ap)
{
   size_t space = (offset < buflen) ? (buflen - offset) : 0;

   offset += vcos_vsnprintf(buf ? (buf + offset) : ((void*)0), space, fmt, ap);

   return offset;
}
