
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (void*,size_t,size_t,int ) ;
 int stdout ;

__attribute__((used)) static size_t header_callback(void *ptr, size_t size, size_t nmemb,
                              void *userp)
{
  size_t len = size * nmemb;
  (void)userp;
  (void)fwrite(ptr, size, nmemb, stdout);
  return len;
}
