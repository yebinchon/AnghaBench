
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
typedef int fd_set ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLM_OK ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int CURL_GLOBAL_DEFAULT ;
 int FD_ZERO (int *) ;
 scalar_t__ MULTI_PERFORM_HANG_TIMEOUT ;
 int Sleep (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stderr ;
 scalar_t__ tvdiff (struct timeval,struct timeval) ;
 struct timeval tvnow () ;

int main(void)
{
  CURL *curl;
  CURLM *mcurl;
  int still_running = 1;
  struct timeval mp_start;

  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if(!curl)
    return 1;

  mcurl = curl_multi_init();
  if(!mcurl)
    return 2;


  curl_easy_setopt(curl, CURLOPT_USERNAME, "user");
  curl_easy_setopt(curl, CURLOPT_PASSWORD, "secret");


  curl_easy_setopt(curl, CURLOPT_URL, "pop3://pop.example.com/1");


  curl_multi_add_handle(mcurl, curl);


  mp_start = tvnow();


  curl_multi_perform(mcurl, &still_running);

  while(still_running) {
    struct timeval timeout;
    fd_set fdread;
    fd_set fdwrite;
    fd_set fdexcep;
    int maxfd = -1;
    int rc;
    CURLMcode mc;

    long curl_timeo = -1;


    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);


    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    curl_multi_timeout(mcurl, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }


    mc = curl_multi_fdset(mcurl, &fdread, &fdwrite, &fdexcep, &maxfd);

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

    if(tvdiff(tvnow(), mp_start) > MULTI_PERFORM_HANG_TIMEOUT) {
      fprintf(stderr,
              "ABORTING: Since it seems that we would have run forever.\n");
      break;
    }

    switch(rc) {
    case -1:
      break;
    case 0:
    default:
      curl_multi_perform(mcurl, &still_running);
      break;
    }
  }


  curl_multi_remove_handle(mcurl, curl);
  curl_multi_cleanup(mcurl);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return 0;
}
