
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int fd_set ;
typedef char CURLSH ;
typedef int CURLM ;
typedef int CURL ;


 int CURLOPT_COOKIEFILE ;
 int CURLOPT_COOKIEJAR ;
 int CURLOPT_COOKIELIST ;
 int CURLOPT_SHARE ;
 int CURLOPT_URL ;
 int CURLSHOPT_SHARE ;
 int CURL_LOCK_DATA_COOKIE ;
 int FD_ZERO (int *) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,char*) ;
 int curl_global_cleanup () ;
 int curl_multi_add_handle (int *,int *) ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_fdset (int *,int *,int *,int *,int*) ;
 int * curl_multi_init () ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int curl_multi_timeout (int *,long*) ;
 int curl_share_cleanup (char*) ;
 char* curl_share_init () ;
 int curl_share_setopt (char*,int ,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int test(char *URL)
{
  CURLSH *sh = ((void*)0);
  CURL *ch = ((void*)0);
  int unfinished;

  CURLM *cm = curl_multi_init();
  if(!cm)
    return 1;
  sh = curl_share_init();
  if(!sh)
    goto cleanup;

  curl_share_setopt(sh, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);
  curl_share_setopt(sh, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);

  ch = curl_easy_init();
  if(!ch)
    goto cleanup;

  curl_easy_setopt(ch, CURLOPT_SHARE, sh);
  curl_easy_setopt(ch, CURLOPT_URL, URL);
  curl_easy_setopt(ch, CURLOPT_COOKIEFILE, "log/cookies1905");
  curl_easy_setopt(ch, CURLOPT_COOKIEJAR, "log/cookies1905");

  curl_multi_add_handle(cm, ch);

  unfinished = 1;
  while(unfinished) {
    int MAX = 0;
    long max_tout;
    fd_set R, W, E;
    struct timeval timeout;

    FD_ZERO(&R);
    FD_ZERO(&W);
    FD_ZERO(&E);
    curl_multi_perform(cm, &unfinished);

    curl_multi_fdset(cm, &R, &W, &E, &MAX);
    curl_multi_timeout(cm, &max_tout);

    if(max_tout > 0) {
      timeout.tv_sec = max_tout / 1000;
      timeout.tv_usec = (max_tout % 1000) * 1000;
    }
    else {
      timeout.tv_sec = 0;
      timeout.tv_usec = 1000;
    }

    select(MAX + 1, &R, &W, &E, &timeout);
  }

  curl_easy_setopt(ch, CURLOPT_COOKIELIST, "FLUSH");
  curl_easy_setopt(ch, CURLOPT_SHARE, ((void*)0));

  curl_multi_remove_handle(cm, ch);
  cleanup:
  curl_easy_cleanup(ch);
  curl_share_cleanup(sh);
  curl_multi_cleanup(cm);
  curl_global_cleanup();

  return 0;
}
