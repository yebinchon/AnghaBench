
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_url ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLMOPT_PIPELINING ;
 int CURLOPT_HEADER ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int NUM_HANDLES ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int fprintf (int ,char*) ;
 int global_init (int ) ;
 int msnprintf (char*,int,char*,char*,int) ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_init (int *) ;
 int multi_perform (int *,int*) ;
 int multi_setopt (int *,int ,long) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;

int test(char *URL)
{
  int res = 0;
  CURL *curl[NUM_HANDLES];
  int running;
  CURLM *m = ((void*)0);
  int i;
  char target_url[256];
  int handles_added = 0;

  for(i = 0; i < NUM_HANDLES; i++)
    curl[i] = ((void*)0);

  start_test_timing();

  global_init(CURL_GLOBAL_ALL);

  multi_init(m);


  for(i = 0; i < NUM_HANDLES; i++) {

    easy_init(curl[i]);

    msnprintf(target_url, sizeof(target_url), "%s%04i", URL, i + 1);
    target_url[sizeof(target_url) - 1] = '\0';
    easy_setopt(curl[i], CURLOPT_URL, target_url);

    easy_setopt(curl[i], CURLOPT_VERBOSE, 1L);

    easy_setopt(curl[i], CURLOPT_HEADER, 1L);
  }




  multi_add_handle(m, curl[handles_added++]);

  multi_setopt(m, CURLMOPT_PIPELINING, 1L);

  fprintf(stderr, "Start at URL 0\n");

  for(;;) {
    struct timeval interval;
    fd_set rd, wr, exc;
    int maxfd = -99;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    multi_perform(m, &running);

    abort_on_test_timeout();

    if(!running) {
      if(handles_added >= NUM_HANDLES)
        break;



      while(handles_added < NUM_HANDLES)
        multi_add_handle(m, curl[handles_added++]);
    }

    FD_ZERO(&rd);
    FD_ZERO(&wr);
    FD_ZERO(&exc);

    multi_fdset(m, &rd, &wr, &exc, &maxfd);



    select_test(maxfd + 1, &rd, &wr, &exc, &interval);

    abort_on_test_timeout();
  }

test_cleanup:



  for(i = 0; i < NUM_HANDLES; i++) {
    curl_multi_remove_handle(m, curl[i]);
    curl_easy_cleanup(curl[i]);
  }

  curl_multi_cleanup(m);
  curl_global_cleanup();

  return res;
}
