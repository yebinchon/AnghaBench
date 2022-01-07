
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hasbody ;

__attribute__((used)) static size_t writedata(char *data, size_t size, size_t nmemb, void *userdata)
{
  (void) data;
  (void) userdata;

  if(size && nmemb)
    hasbody = 1;
  return size * nmemb;
}
