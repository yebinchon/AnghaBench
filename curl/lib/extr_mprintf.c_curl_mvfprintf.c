
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int dprintf_formatf (int *,int ,char const*,int ) ;
 int fputc ;

int curl_mvfprintf(FILE *whereto, const char *format, va_list ap_save)
{
  return dprintf_formatf(whereto, fputc, format, ap_save);
}
