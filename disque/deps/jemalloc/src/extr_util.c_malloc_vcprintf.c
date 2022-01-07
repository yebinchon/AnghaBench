
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int MALLOC_PRINTF_BUFSIZE ;
 void je_malloc_message (void*,char const*) ;
 int malloc_vsnprintf (char*,int,char const*,int ) ;
 void wrtmessage (void*,char const*) ;

void
malloc_vcprintf(void (*write_cb)(void *, const char *), void *cbopaque,
    const char *format, va_list ap)
{
 char buf[MALLOC_PRINTF_BUFSIZE];

 if (write_cb == ((void*)0)) {





  write_cb = (je_malloc_message != ((void*)0)) ? je_malloc_message :
      wrtmessage;
  cbopaque = ((void*)0);
 }

 malloc_vsnprintf(buf, sizeof(buf), format, ap);
 write_cb(cbopaque, buf);
}
