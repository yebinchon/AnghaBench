
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; int member_1; int member_0; } ;
struct input {int hnd; } ;
typedef int fd_set ;
typedef scalar_t__ CURLMcode ;
typedef int CURLM ;


 int CURLMOPT_MAX_HOST_CONNECTIONS ;
 int CURLMOPT_PIPELINING ;
 scalar_t__ CURLM_OK ;
 long CURLPIPE_MULTIPLEX ;
 int FD_ZERO (int *) ;
 int NUM_HANDLES ;
 int Sleep (int) ;
 int atoi (char*) ;
 int curl_easy_cleanup (int ) ;
 int curl_multi_add_handle (int *,int ) ;
 int curl_multi_cleanup (int *) ;
 scalar_t__ curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int ) ;
 int curl_multi_setopt (int *,int ,long) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int setup (struct input*,int,char const*) ;
 int stderr ;

int main(int argc, char **argv)
{
  struct input trans[NUM_HANDLES];
  CURLM *multi_handle;
  int i;
  int still_running = 0;
  const char *filename = "index.html";
  int num_transfers;

  if(argc > 1) {

    num_transfers = atoi(argv[1]);

    if(!num_transfers || (num_transfers > NUM_HANDLES))
      num_transfers = 3;

    if(argc > 2)

      filename = argv[2];
  }
  else
    num_transfers = 3;


  multi_handle = curl_multi_init();

  for(i = 0; i<num_transfers; i++) {
    setup(&trans[i], i, filename);


    curl_multi_add_handle(multi_handle, trans[i].hnd);
  }

  curl_multi_setopt(multi_handle, CURLMOPT_PIPELINING, CURLPIPE_MULTIPLEX);


  curl_multi_setopt(multi_handle, CURLMOPT_MAX_HOST_CONNECTIONS, 1L);


  curl_multi_perform(multi_handle, &still_running);

  while(still_running) {
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
  }

  curl_multi_cleanup(multi_handle);

  for(i = 0; i<num_transfers; i++) {
    curl_multi_remove_handle(multi_handle, trans[i].hnd);
    curl_easy_cleanup(trans[i].hnd);
  }

  return 0;
}
