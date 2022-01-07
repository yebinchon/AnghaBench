
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {char* readptr; scalar_t__ sizeleft; } ;


 size_t CURL_READFUNC_ABORT ;

__attribute__((used)) static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
  struct WriteThis *pooh = (struct WriteThis *)userp;

  if(size*nmemb < 1)
    return 0;

  if(pooh->sizeleft) {
    *(char *)ptr = pooh->readptr[0];
    pooh->readptr++;
    pooh->sizeleft--;
    return 1;
  }

  return 0;

}
