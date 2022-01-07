
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {size_t counter; } ;


 int fprintf (int ,char*) ;
 int memcpy (void*,char const*,size_t) ;
 char** post ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
  struct WriteThis *pooh = (struct WriteThis *)userp;
  const char *data;

  if(size*nmemb < 1)
    return 0;

  data = post[pooh->counter];

  if(data) {
    size_t len = strlen(data);
    if(size*nmemb < len) {
      fprintf(stderr, "read buffer is too small to run test\n");
      return 0;
    }
    memcpy(ptr, data, len);
    pooh->counter++;
    return len;
  }
  return 0;
}
