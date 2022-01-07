
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
typedef int fd_set ;
typedef char* curl_off_t ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; } ;
typedef TYPE_2__ CURLMsg ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 int CURLE_OK ;
 scalar_t__ CURLMSG_DONE ;
 scalar_t__ CURLM_OK ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_POSTFIELDSIZE_LARGE ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int Sleep (int) ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int global_init (int ) ;
 int printf (char*,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;
 char* testData ;
 scalar_t__ testDataSize ;

int test(char *URL)
{
  CURL *easy;
  CURLM *multi_handle;
  int still_running;
  CURLMsg *msg;
  int msgs_left;
  int res = CURLE_OK;

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);


  easy = curl_easy_init();


  multi_handle = curl_multi_init();


  curl_multi_add_handle(multi_handle, easy);


  curl_easy_setopt(easy, CURLOPT_URL, URL);
  curl_easy_setopt(easy, CURLOPT_POSTFIELDSIZE_LARGE,
                   (curl_off_t)testDataSize);
  curl_easy_setopt(easy, CURLOPT_POSTFIELDS, testData);


  curl_multi_perform(multi_handle, &still_running);

  abort_on_test_timeout();

  do {
    struct timeval timeout;
    int rc;
    CURLMcode mc;

    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -1;

    long curl_timeo = -1;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);


    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    curl_multi_timeout(multi_handle, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }


    mc = curl_multi_fdset(multi_handle, &fdread, &fdwrite, &fdexcep, &maxfd);

    if(mc != CURLM_OK) {
      fprintf(stderr, "curl_multi_fdset() failed, code %d.\n", mc);
      break;
    }







    if(maxfd == -1) {





      struct timeval wait = { 0, 100 * 1000 };
      rc = select(0, ((void*)0), ((void*)0), ((void*)0), &wait);

    }
    else {


      rc = select(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);
    }

    switch(rc) {
    case -1:

      break;
    case 0:
    default:
      curl_multi_perform(multi_handle, &still_running);
      break;
    }

    abort_on_test_timeout();
  } while(still_running);


  do {
    msg = curl_multi_info_read(multi_handle, &msgs_left);
    if(msg && msg->msg == CURLMSG_DONE) {
      printf("HTTP transfer completed with status %d\n", msg->data.result);
      break;
    }

    abort_on_test_timeout();
  } while(msg);

test_cleanup:
  curl_multi_cleanup(multi_handle);


  curl_easy_cleanup(easy);
  curl_global_cleanup();

  return res;
}
