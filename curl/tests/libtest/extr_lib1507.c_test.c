
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; long tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef int fd_set ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_MAIL_FROM ;
 int CURLOPT_MAIL_RCPT ;
 int CURLOPT_PASSWORD ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERNAME ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_DEFAULT ;
 int FD_ZERO (int *) ;
 long MAILFROM ;
 scalar_t__ MULTI_PERFORM_HANG_TIMEOUT ;
 long PASSWORD ;
 int RECIPIENT ;
 long USERNAME ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_timeout (int *,long*) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int easy_init (int *) ;
 int fprintf (int ,char*) ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 long read_callback ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int stderr ;
 scalar_t__ tutil_tvdiff (struct timeval,struct timeval) ;
 struct timeval tutil_tvnow () ;

int test(char *URL)
{
   int res = 0;
   CURL *curl = ((void*)0);
   CURLM *mcurl = ((void*)0);
   int still_running = 1;
   struct timeval mp_start;
   struct curl_slist *rcpt_list = ((void*)0);

   curl_global_init(CURL_GLOBAL_DEFAULT);

   easy_init(curl);

   multi_init(mcurl);

   rcpt_list = curl_slist_append(rcpt_list, RECIPIENT);




   curl_easy_setopt(curl, CURLOPT_URL, URL);




   curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);
   curl_easy_setopt(curl, CURLOPT_READFUNCTION, read_callback);
   curl_easy_setopt(curl, CURLOPT_MAIL_FROM, MAILFROM);
   curl_easy_setopt(curl, CURLOPT_MAIL_RCPT, rcpt_list);
   curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
   multi_add_handle(mcurl, curl);

   mp_start = tutil_tvnow();


  curl_multi_perform(mcurl, &still_running);

  while(still_running) {
    struct timeval timeout;
    int rc;

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

    curl_multi_timeout(mcurl, &curl_timeo);
    if(curl_timeo >= 0) {
      timeout.tv_sec = curl_timeo / 1000;
      if(timeout.tv_sec > 1)
        timeout.tv_sec = 1;
      else
        timeout.tv_usec = (curl_timeo % 1000) * 1000;
    }


    curl_multi_fdset(mcurl, &fdread, &fdwrite, &fdexcep, &maxfd);







    rc = select(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    if(tutil_tvdiff(tutil_tvnow(), mp_start) > MULTI_PERFORM_HANG_TIMEOUT) {
      fprintf(stderr, "ABORTING TEST, since it seems "
              "that it would have run forever.\n");
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

test_cleanup:

  curl_slist_free_all(rcpt_list);
  curl_multi_remove_handle(mcurl, curl);
  curl_multi_cleanup(mcurl);
  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
