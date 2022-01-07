
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {scalar_t__ in_callback; } ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLMcode ;


 scalar_t__ CURLM_OK ;
 scalar_t__ CURLM_RECURSIVE_API_CALL ;
 int Curl_update_timer (struct Curl_multi*) ;
 int FALSE ;
 scalar_t__ multi_socket (struct Curl_multi*,int ,int ,int ,int*) ;

CURLMcode curl_multi_socket(struct Curl_multi *multi, curl_socket_t s,
                            int *running_handles)
{
  CURLMcode result;
  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;
  result = multi_socket(multi, FALSE, s, 0, running_handles);
  if(CURLM_OK >= result)
    Curl_update_timer(multi);
  return result;
}
