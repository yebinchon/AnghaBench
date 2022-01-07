
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {scalar_t__ in_callback; } ;
typedef scalar_t__ CURLMcode ;


 scalar_t__ CURLM_OK ;
 scalar_t__ CURLM_RECURSIVE_API_CALL ;
 int CURL_SOCKET_BAD ;
 int Curl_update_timer (struct Curl_multi*) ;
 int TRUE ;
 scalar_t__ multi_socket (struct Curl_multi*,int ,int ,int ,int*) ;

CURLMcode curl_multi_socket_all(struct Curl_multi *multi, int *running_handles)

{
  CURLMcode result;
  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;
  result = multi_socket(multi, TRUE, CURL_SOCKET_BAD, 0, running_handles);
  if(CURLM_OK >= result)
    Curl_update_timer(multi);
  return result;
}
