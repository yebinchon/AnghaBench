
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct GlobalConfig {int errors; int mute; } ;


 int ISSPACE (char) ;
 int curl_free (char*) ;
 char* curlx_mvaprintf (char const*,int ) ;
 int fputs (char const*,int ) ;
 int fwrite (char*,size_t,int,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void voutf(struct GlobalConfig *config,
                  const char *prefix,
                  const char *fmt,
                  va_list ap)
{
  size_t width = (79 - strlen(prefix));
  if(!config->mute) {
    size_t len;
    char *ptr;
    char *print_buffer;

    print_buffer = curlx_mvaprintf(fmt, ap);
    if(!print_buffer)
      return;
    len = strlen(print_buffer);

    ptr = print_buffer;
    while(len > 0) {
      fputs(prefix, config->errors);

      if(len > width) {
        size_t cut = width-1;

        while(!ISSPACE(ptr[cut]) && cut) {
          cut--;
        }
        if(0 == cut)


          cut = width-1;

        (void)fwrite(ptr, cut + 1, 1, config->errors);
        fputs("\n", config->errors);
        ptr += cut + 1;
        len -= cut + 1;
      }
      else {
        fputs(ptr, config->errors);
        len = 0;
      }
    }
    curl_free(print_buffer);
  }
}
