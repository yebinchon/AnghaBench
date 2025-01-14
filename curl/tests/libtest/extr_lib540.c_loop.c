
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef int fd_set ;
struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int * easy_handle; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLMSG_DONE ;
 int FD_ZERO (int *) ;
 int INT_MAX ;
 int NUM_HANDLES ;
 int curl_easy_cleanup (int *) ;
 char* curl_easy_strerror (scalar_t__) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 int ** eh ;
 int fprintf (int ,char*,int,...) ;
 int init (int,int *,char const*,char const*,struct curl_slist*) ;
 int res_multi_fdset (int *,int *,int *,int *,int*) ;
 int res_multi_perform (int *,int*) ;
 int res_multi_timeout (int *,long*) ;
 int res_select_test (int,int *,int *,int *,struct timeval*) ;
 int res_test_timedout () ;
 int stderr ;

__attribute__((used)) static int loop(int num, CURLM *cm, const char *url, const char *userpwd,
                struct curl_slist *headers)
{
  CURLMsg *msg;
  long L;
  int Q, U = -1;
  fd_set R, W, E;
  struct timeval T;
  int res = 0;

  res = init(num, cm, url, userpwd, headers);
  if(res)
    return res;

  while(U) {

    int M = -99;

    res_multi_perform(cm, &U);
    if(res)
      return res;

    res_test_timedout();
    if(res)
      return res;

    if(U) {
      FD_ZERO(&R);
      FD_ZERO(&W);
      FD_ZERO(&E);

      res_multi_fdset(cm, &R, &W, &E, &M);
      if(res)
        return res;



      res_multi_timeout(cm, &L);
      if(res)
        return res;



      if(L != -1) {
        int itimeout = (L > (long)INT_MAX) ? INT_MAX : (int)L;
        T.tv_sec = itimeout/1000;
        T.tv_usec = (itimeout%1000)*1000;
      }
      else {
        T.tv_sec = 5;
        T.tv_usec = 0;
      }

      res_select_test(M + 1, &R, &W, &E, &T);
      if(res)
        return res;
    }

    while((msg = curl_multi_info_read(cm, &Q)) != ((void*)0)) {
      if(msg->msg == CURLMSG_DONE) {
        int i;
        CURL *e = msg->easy_handle;
        fprintf(stderr, "R: %d - %s\n", (int)msg->data.result,
                curl_easy_strerror(msg->data.result));
        curl_multi_remove_handle(cm, e);
        curl_easy_cleanup(e);
        for(i = 0; i < NUM_HANDLES; i++) {
          if(eh[i] == e) {
            eh[i] = ((void*)0);
            break;
          }
        }
      }
      else
        fprintf(stderr, "E: CURLMsg (%d)\n", (int)msg->msg);
    }

    res_test_timedout();
    if(res)
      return res;
  }

  return 0;
}
