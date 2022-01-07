
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dohresponse {size_t size; int * memory; } ;


 int * Curl_saferealloc (int *,size_t) ;
 size_t DOH_MAX_RESPONSE_SIZE ;
 int memcpy (int *,void*,size_t) ;

__attribute__((used)) static size_t
doh_write_cb(void *contents, size_t size, size_t nmemb, void *userp)
{
  size_t realsize = size * nmemb;
  struct dohresponse *mem = (struct dohresponse *)userp;

  if((mem->size + realsize) > DOH_MAX_RESPONSE_SIZE)

    return 0;

  mem->memory = Curl_saferealloc(mem->memory, mem->size + realsize);
  if(!mem->memory)

    return 0;

  memcpy(&(mem->memory[mem->size]), contents, realsize);
  mem->size += realsize;

  return realsize;
}
