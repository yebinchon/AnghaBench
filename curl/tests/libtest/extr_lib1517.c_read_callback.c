
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {size_t sizeleft; size_t readptr; } ;


 int memcpy (void*,size_t,size_t) ;
 int wait_ms (int) ;

__attribute__((used)) static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
  struct WriteThis *pooh = (struct WriteThis *)userp;
  size_t tocopy = size * nmemb;



  wait_ms(1000);

  if(tocopy < 1 || !pooh->sizeleft)
    return 0;

  if(pooh->sizeleft < tocopy)
    tocopy = pooh->sizeleft;

  memcpy(ptr, pooh->readptr, tocopy);
  pooh->readptr += tocopy;
  pooh->sizeleft -= tocopy;
  return tocopy;
}
