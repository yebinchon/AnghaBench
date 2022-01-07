
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct asprintf {char* buffer; size_t len; scalar_t__ alloc; scalar_t__ fail; } ;


 int alloc_addbyter ;
 int dprintf_formatf (struct asprintf*,int ,char const*,int ) ;
 int free (char*) ;
 char* strdup (char*) ;

char *curl_mvaprintf(const char *format, va_list ap_save)
{
  int retcode;
  struct asprintf info;

  info.buffer = ((void*)0);
  info.len = 0;
  info.alloc = 0;
  info.fail = 0;

  retcode = dprintf_formatf(&info, alloc_addbyter, format, ap_save);
  if((-1 == retcode) || info.fail) {
    if(info.alloc)
      free(info.buffer);
    return ((void*)0);
  }

  if(info.alloc) {
    info.buffer[info.len] = 0;
    return info.buffer;
  }
  return strdup("");
}
