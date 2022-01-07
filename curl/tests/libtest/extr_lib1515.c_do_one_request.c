
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct curl_slist {int dummy; } ;
typedef int fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; int * easy_handle; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;
typedef int CURL ;


 scalar_t__ CURLMSG_DONE ;
 int CURLOPT_DEBUGFUNCTION ;
 int CURLOPT_DNS_CACHE_TIMEOUT ;
 int CURLOPT_RESOLVE ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int DNS_TIMEOUT ;
 int FD_ZERO (int *) ;
 int abort_on_test_timeout () ;
 int curl_easy_cleanup (int *) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int curl_multi_remove_handle (int *,int *) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int debug_callback ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int multi_add_handle (int *,int *) ;
 int multi_fdset (int *,int *,int *,int *,int*) ;
 int multi_perform (int *,int*) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int do_one_request(CURLM *m, char *URL, char *resolve)
{
  CURL *curls;
  struct curl_slist *resolve_list = ((void*)0);
  int still_running;
  int res = 0;
  CURLMsg *msg;
  int msgs_left;

  resolve_list = curl_slist_append(resolve_list, resolve);

  easy_init(curls);

  easy_setopt(curls, CURLOPT_URL, URL);
  easy_setopt(curls, CURLOPT_RESOLVE, resolve_list);
  easy_setopt(curls, CURLOPT_DEBUGFUNCTION, debug_callback);
  easy_setopt(curls, CURLOPT_VERBOSE, 1);
  easy_setopt(curls, CURLOPT_DNS_CACHE_TIMEOUT, DNS_TIMEOUT);

  multi_add_handle(m, curls);
  multi_perform(m, &still_running);

  abort_on_test_timeout();

  while(still_running) {
    struct timeval timeout;
    fd_set fdread, fdwrite, fdexcep;
    int maxfd = -99;

    FD_ZERO(&fdread);
    FD_ZERO(&fdwrite);
    FD_ZERO(&fdexcep);
    timeout.tv_sec = 1;
    timeout.tv_usec = 0;

    multi_fdset(m, &fdread, &fdwrite, &fdexcep, &maxfd);
    select_test(maxfd + 1, &fdread, &fdwrite, &fdexcep, &timeout);

    abort_on_test_timeout();
    multi_perform(m, &still_running);

    abort_on_test_timeout();
  }

  do {
    msg = curl_multi_info_read(m, &msgs_left);
    if(msg && msg->msg == CURLMSG_DONE && msg->easy_handle == curls) {
      res = msg->data.result;
      break;
    }
  } while(msg);

test_cleanup:

  curl_multi_remove_handle(m, curls);
  curl_easy_cleanup(curls);
  curl_slist_free_all(resolve_list);

  return res;
}
