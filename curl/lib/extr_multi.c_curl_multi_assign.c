
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_sh_entry {void* socketp; } ;
struct Curl_multi {int sockhash; scalar_t__ in_callback; } ;
typedef int curl_socket_t ;
typedef int CURLMcode ;


 int CURLM_BAD_SOCKET ;
 int CURLM_OK ;
 int CURLM_RECURSIVE_API_CALL ;
 struct Curl_sh_entry* sh_getentry (int *,int ) ;

CURLMcode curl_multi_assign(struct Curl_multi *multi, curl_socket_t s,
                            void *hashp)
{
  struct Curl_sh_entry *there = ((void*)0);

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  there = sh_getentry(&multi->sockhash, s);

  if(!there)
    return CURLM_BAD_SOCKET;

  there->socketp = hashp;

  return CURLM_OK;
}
