
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ curl_strdup_callback ;
typedef scalar_t__ curl_realloc_callback ;
typedef scalar_t__ curl_malloc_callback ;
typedef scalar_t__ curl_free_callback ;
typedef scalar_t__ curl_calloc_callback ;
typedef int CURLcode ;


 int CURLE_FAILED_INIT ;
 int CURLE_OK ;
 scalar_t__ Curl_ccalloc ;
 scalar_t__ Curl_cfree ;
 scalar_t__ Curl_cmalloc ;
 scalar_t__ Curl_crealloc ;
 scalar_t__ Curl_cstrdup ;
 int FALSE ;
 int global_init (long,int ) ;
 scalar_t__ initialized ;

CURLcode curl_global_init_mem(long flags, curl_malloc_callback m,
                              curl_free_callback f, curl_realloc_callback r,
                              curl_strdup_callback s, curl_calloc_callback c)
{

  if(!m || !f || !r || !s || !c)
    return CURLE_FAILED_INIT;

  if(initialized) {



    initialized++;
    return CURLE_OK;
  }



  Curl_cmalloc = m;
  Curl_cfree = f;
  Curl_cstrdup = s;
  Curl_crealloc = r;
  Curl_ccalloc = c;


  return global_init(flags, FALSE);
}
