
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {scalar_t__ in_callback; } ;
typedef int CURLMcode ;


 int CURLM_BAD_HANDLE ;
 int CURLM_RECURSIVE_API_CALL ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 int multi_timeout (struct Curl_multi*,long*) ;

CURLMcode curl_multi_timeout(struct Curl_multi *multi,
                             long *timeout_ms)
{

  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  return multi_timeout(multi, timeout_ms);
}
