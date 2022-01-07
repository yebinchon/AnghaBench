
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef int FILE ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_ACCEPTTIMEOUT_MS ;
 int CURLOPT_FTPPORT ;
 int CURLOPT_READDATA ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int INT_MAX ;
 int TEST_ERR_FOPEN ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int libtest_arg2 ;
 char* libtest_arg3 ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int multi_timeout (int *,long*) ;
 int res_global_init (int ) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;
 char* strerror (int) ;
 int strtol (int ,int *,int) ;

int test(char *URL)
{
  CURL *easy = ((void*)0);
  CURLM *multi = ((void*)0);
  int res = 0;
  int running;
  int msgs_left;
  CURLMsg *msg;
  FILE *upload = ((void*)0);

  start_test_timing();

  upload = fopen(libtest_arg3, "rb");
  if(!upload) {
    fprintf(stderr, "fopen() failed with error: %d (%s)\n",
            errno, strerror(errno));
    fprintf(stderr, "Error opening file: (%s)\n", libtest_arg3);
    return TEST_ERR_FOPEN;
  }

  res_global_init(CURL_GLOBAL_ALL);
  if(res) {
    fclose(upload);
    return res;
  }

  easy_init(easy);


  easy_setopt(easy, CURLOPT_VERBOSE, 1L);


  easy_setopt(easy, CURLOPT_URL, URL);


  easy_setopt(easy, CURLOPT_UPLOAD, 1L);


  easy_setopt(easy, CURLOPT_READDATA, upload);


  easy_setopt(easy, CURLOPT_FTPPORT, "-");


  easy_setopt(easy, CURLOPT_ACCEPTTIMEOUT_MS,
              strtol(libtest_arg2, ((void*)0), 10)*1000);

  multi_init(multi);

  multi_add_handle(multi, easy);

  for(;;) {
    struct timeval interval;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    long timeout = -99;
    int maxfd = -99;

    multi_perform(multi, &running);

    abort_on_test_timeout();

    if(!running)
      break;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);

    multi_fdset(multi, &fdread, &fdwrite, &fdexcep, &maxfd);



    multi_timeout(multi, &timeout);



    if(timeout != -1L) {
      int itimeout = (timeout > (long)INT_MAX) ? INT_MAX : (int)timeout;
      interval.tv_sec = itimeout/1000;
      interval.tv_usec = (itimeout%1000)*1000;
    }
    else {
      interval.tv_sec = 0;
      interval.tv_usec = 100000L;
    }

    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &interval);

    abort_on_test_timeout();
  }

  msg = curl_multi_info_read(multi, &msgs_left);
  if(msg)
    res = msg->data.result;

test_cleanup:



  curl_multi_cleanup(multi);
  curl_easy_cleanup(easy);
  curl_global_cleanup();


  fclose(upload);

  return res;
}
