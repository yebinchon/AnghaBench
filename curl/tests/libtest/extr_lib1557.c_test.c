
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLM ;
typedef int CURL ;


 int CURLMOPT_MAX_HOST_CONNECTIONS ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,char*) ;
 int global_init (int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int multi_remove_handle (int *,int *) ;
 int multi_setopt (int *,int ,int) ;

int test(char *URL)
{
  CURLM *curlm = ((void*)0);
  CURL *curl1 = ((void*)0);
  CURL *curl2 = ((void*)0);
  int running_handles = 0;
  int res = 0;

  global_init(CURL_GLOBAL_ALL);

  multi_init(curlm);
  multi_setopt(curlm, CURLMOPT_MAX_HOST_CONNECTIONS, 1);

  easy_init(curl1);
  easy_setopt(curl1, CURLOPT_URL, URL);
  multi_add_handle(curlm, curl1);

  easy_init(curl2);
  easy_setopt(curl2, CURLOPT_URL, URL);
  multi_add_handle(curlm, curl2);

  multi_perform(curlm, &running_handles);

  multi_remove_handle(curlm, curl2);
  curl_easy_cleanup(curl2);


  multi_remove_handle(curlm, curl1);
  curl_easy_cleanup(curl1);

test_cleanup:
  curl_multi_cleanup(curlm);
  curl_global_cleanup();
  return res;
}
