
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_size; } ;
typedef TYPE_1__ struct_stat ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef char* curl_off_t ;
typedef char FILE ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_FTPPORT ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_READDATA ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int TEST_ERR_FOPEN ;
 int TEST_ERR_FSTAT ;
 int TEST_ERR_USAGE ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int errno ;
 int fclose (char*) ;
 int fileno (char*) ;
 char* fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fstat (int ,TYPE_1__*) ;
 char* libtest_arg2 ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int res_global_init (int ) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;
 char* strerror (int) ;

int test(char *URL)
{
  int res = 0;
  CURL *curl = ((void*)0);
  FILE *hd_src = ((void*)0);
  int hd;
  struct_stat file_info;
  CURLM *m = ((void*)0);
  int running;

  start_test_timing();

  if(!libtest_arg2) {





    fprintf(stderr, "Usage: lib525 [url] [uploadfile]\n");

    return TEST_ERR_USAGE;
  }

  hd_src = fopen(libtest_arg2, "rb");
  if(((void*)0) == hd_src) {
    fprintf(stderr, "fopen failed with error: %d (%s)\n",
            errno, strerror(errno));
    fprintf(stderr, "Error opening file: (%s)\n", libtest_arg2);
    return TEST_ERR_FOPEN;
  }


  hd = fstat(fileno(hd_src), &file_info);
  if(hd == -1) {

    fprintf(stderr, "fstat() failed with error: %d (%s)\n",
            errno, strerror(errno));
    fprintf(stderr, "ERROR: cannot open file (%s)\n", libtest_arg2);
    fclose(hd_src);
    return TEST_ERR_FSTAT;
  }

  res_global_init(CURL_GLOBAL_ALL);
  if(res) {
    fclose(hd_src);
    return res;
  }

  easy_init(curl);


  easy_setopt(curl, CURLOPT_UPLOAD, 1L);


  easy_setopt(curl, CURLOPT_URL, URL);


  easy_setopt(curl, CURLOPT_VERBOSE, 1L);


  easy_setopt(curl, CURLOPT_FTPPORT, "-");


  easy_setopt(curl, CURLOPT_READDATA, hd_src);
  easy_setopt(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t)file_info.st_size);

  multi_init(m);

  multi_add_handle(m, curl);

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    multi_perform(m, &running);

    abort_on_test_timeout();

    if(!running)
      break;

    FD_ZERO(&rd);
    FD_ZERO(&wr);
    FD_ZERO(&exc);

    multi_fdset(m, &rd, &wr, &exc, &maxfd);



    select_test(maxfd + 1, &rd, &wr, &exc, &interval);

    abort_on_test_timeout();
  }

test_cleanup:
  curl_multi_remove_handle(m, curl);
  curl_easy_cleanup(curl);
  curl_multi_cleanup(m);
  curl_global_cleanup();



  fclose(hd_src);

  return res;
}
