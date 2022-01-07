
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
struct CURLMsg {scalar_t__ msg; int * easy_handle; } ;
typedef int fd_set ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;
typedef int CURL ;


 int CURLMOPT_PIPELINING ;
 int CURLMOPT_PUSHDATA ;
 int CURLMOPT_PUSHFUNCTION ;
 scalar_t__ CURLMSG_DONE ;
 scalar_t__ CURLM_OK ;
 int* CURLPIPE_MULTIPLEX ;
 int FD_ZERO (int *) ;
 int Sleep (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 struct CURLMsg* curl_multi_info_read (int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_setopt (int *,int ,int*) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,...) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int* server_push_callback ;
 scalar_t__ setup (int *) ;
 int stderr ;

int main(void)
{
  CURL *easy;
  CURLM *multi_handle;
  int still_running;
  int transfers = 1;
  struct CURLMsg *m;


  multi_handle = curl_multi_init();

  easy = curl_easy_init();


  if(setup(easy)) {
    fprintf(stderr, "failed\n");
    return 1;
  }


  curl_multi_add_handle(multi_handle, easy);

  curl_multi_setopt(multi_handle, CURLMOPT_PIPELINING, CURLPIPE_MULTIPLEX);
  curl_multi_setopt(multi_handle, CURLMOPT_PUSHFUNCTION, server_push_callback);
  curl_multi_setopt(multi_handle, CURLMOPT_PUSHDATA, &transfers);


  curl_multi_perform(multi_handle, &still_running);

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







    do {
      int msgq = 0;;
      m = curl_multi_info_read(multi_handle, &msgq);
      if(m && (m->msg == CURLMSG_DONE)) {
        CURL *e = m->easy_handle;
        transfers--;
        curl_multi_remove_handle(multi_handle, e);
        curl_easy_cleanup(e);
      }
    } while(m);

  } while(transfers);

  curl_multi_cleanup(multi_handle);


  return 0;
}
