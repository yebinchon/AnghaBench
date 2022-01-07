
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int curl_mime ;
typedef int CURLM ;
typedef int CURL ;


 int CURLM_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_XFERINFOFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int CURL_ZERO_TERMINATED ;
 int TEST_ERR_MAJOR_BAD ;
 int TEST_HANG_TIMEOUT ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int * curl_mime_addpart (int *) ;
 int curl_mime_data (int *,char*,int ) ;
 int curl_mime_free (int *) ;
 int * curl_mime_init (int *) ;
 int curl_mime_name (int *,char*) ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_wait (int *,int *,int ,int ,int*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int printf (char*,int) ;
 int start_test_timing () ;
 long xferinfo ;

int test(char *URL)
{
  CURL *curls = ((void*)0);
  CURLM *multi = ((void*)0);
  int still_running;
  int i = 0;
  int res = 0;
  curl_mimepart *field = ((void*)0);
  curl_mime *mime = ((void*)0);
  int counter = 1;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  multi_init(multi);

  easy_init(curls);

  mime = curl_mime_init(curls);
  field = curl_mime_addpart(mime);
  curl_mime_name(field, "name");
  curl_mime_data(field, "value", CURL_ZERO_TERMINATED);

  easy_setopt(curls, CURLOPT_URL, URL);
  easy_setopt(curls, CURLOPT_HEADER, 1L);
  easy_setopt(curls, CURLOPT_VERBOSE, 1L);
  easy_setopt(curls, CURLOPT_MIMEPOST, mime);
  easy_setopt(curls, CURLOPT_USERPWD, "u:s");
  easy_setopt(curls, CURLOPT_XFERINFOFUNCTION, xferinfo);
  easy_setopt(curls, CURLOPT_NOPROGRESS, 1L);

  multi_add_handle(multi, curls);

  multi_perform(multi, &still_running);

  abort_on_test_timeout();

  while(still_running && counter--) {
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

test_cleanup:

  curl_mime_free(mime);
  curl_multi_remove_handle(multi, curls);
  curl_multi_cleanup(multi);
  curl_easy_cleanup(curls);
  curl_global_cleanup();

  if(res)
    i = res;

  return i;
}
