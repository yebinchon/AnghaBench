
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const curl_slist ;
typedef int CURLM ;


 scalar_t__ CURLAUTH_ANY ;
 int CURLOPT_HEADER ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYAUTH ;
 int CURLOPT_PROXYUSERPWD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 char const* PROXY ;
 int curl_easy_cleanup (int *) ;
 int ** eh ;
 int res_easy_init (int *) ;
 int res_easy_setopt (int *,int ,...) ;
 int res_multi_add_handle (int *,int *) ;

__attribute__((used)) static int init(int num, CURLM *cm, const char *url, const char *userpwd,
                struct curl_slist *headers)
{
  int res = 0;

  res_easy_init(eh[num]);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_URL, url);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_PROXY, PROXY);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_PROXYUSERPWD, userpwd);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_PROXYAUTH, (long)CURLAUTH_ANY);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_VERBOSE, 1L);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_HEADER, 1L);
  if(res)
    goto init_failed;

  res_easy_setopt(eh[num], CURLOPT_HTTPHEADER, headers);
  if(res)
    goto init_failed;

  res_multi_add_handle(cm, eh[num]);
  if(res)
    goto init_failed;

  return 0;

init_failed:

  curl_easy_cleanup(eh[num]);
  eh[num] = ((void*)0);

  return res;
}
