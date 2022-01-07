
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLM_OK ;
 int CURLOPT_INFILESIZE ;
 int CURLOPT_SSH_PRIVATE_KEYFILE ;
 int CURLOPT_SSH_PUBLIC_KEYFILE ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*,...) ;
 int global_init (int ) ;
 long libtest_arg2 ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int stderr ;

int test(char *URL)
{
  int stillRunning;
  CURLM *multiHandle = ((void*)0);
  CURL *curl = ((void*)0);
  CURLMcode res = CURLM_OK;

  global_init(CURL_GLOBAL_ALL);

  multi_init(multiHandle);

  easy_init(curl);

  easy_setopt(curl, CURLOPT_USERPWD, libtest_arg2);
  easy_setopt(curl, CURLOPT_SSH_PUBLIC_KEYFILE, "curl_client_key.pub");
  easy_setopt(curl, CURLOPT_SSH_PRIVATE_KEYFILE, "curl_client_key");

  easy_setopt(curl, CURLOPT_UPLOAD, 1L);
  easy_setopt(curl, CURLOPT_VERBOSE, 1L);

  easy_setopt(curl, CURLOPT_URL, URL);
  easy_setopt(curl, CURLOPT_INFILESIZE, (long)5);

  multi_add_handle(multiHandle, curl);




  fprintf(stderr, "curl_multi_perform()...\n");

  multi_perform(multiHandle, &stillRunning);

  fprintf(stderr, "curl_multi_perform() succeeded\n");

  fprintf(stderr, "curl_multi_remove_handle()...\n");
  res = curl_multi_remove_handle(multiHandle, curl);
  if(res)
    fprintf(stderr, "curl_multi_remove_handle() failed, "
            "with code %d\n", (int)res);
  else
    fprintf(stderr, "curl_multi_remove_handle() succeeded\n");

test_cleanup:



  curl_easy_cleanup(curl);
  curl_multi_cleanup(multiHandle);
  curl_global_cleanup();

  return (int)res;
}
