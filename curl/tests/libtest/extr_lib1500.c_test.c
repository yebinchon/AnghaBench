
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 int CURLM_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_FAILURE ;
 int TEST_ERR_MAJOR_BAD ;
 int TEST_HANG_TIMEOUT ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int curl_multi_wait (int *,int *,int ,int ,int*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int printf (char*,int) ;
 int start_test_timing () ;

int test(char *URL)
{
  CURL *curls = ((void*)0);
  CURLM *multi = ((void*)0);
  int still_running;
  int i = TEST_ERR_FAILURE;
  int res = 0;
  CURLMsg *msg;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  multi_init(multi);

  easy_init(curls);

  easy_setopt(curls, CURLOPT_URL, URL);
  easy_setopt(curls, CURLOPT_HEADER, 1L);

  multi_add_handle(multi, curls);

  multi_perform(multi, &still_running);

  abort_on_test_timeout();

  while(still_running) {
    int num;
    res = curl_multi_wait(multi, ((void*)0), 0, TEST_HANG_TIMEOUT, &num);
    if(res != CURLM_OK) {
      printf("curl_multi_wait() returned %d\n", res);
      res = TEST_ERR_MAJOR_BAD;
      goto test_cleanup;
    }

    abort_on_test_timeout();

    multi_perform(multi, &still_running);

    abort_on_test_timeout();
  }

  msg = curl_multi_info_read(multi, &still_running);
  if(msg)


    i = msg->data.result;

test_cleanup:



  curl_multi_cleanup(multi);
  curl_easy_cleanup(curls);
  curl_global_cleanup();

  if(res)
    i = res;

  return i;
}
