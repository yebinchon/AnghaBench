
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; long tv_usec; } ;
typedef int fd_set ;
struct TYPE_4__ {int result; } ;
struct TYPE_5__ {scalar_t__ msg; scalar_t__ easy_handle; TYPE_1__ data; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;


 int CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE ;
 int CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE ;
 int CURLMOPT_MAX_HOST_CONNECTIONS ;
 int CURLMOPT_MAX_PIPELINE_LENGTH ;
 int CURLMOPT_PIPELINING ;
 int CURLMOPT_PIPELINING_SERVER_BL ;
 int CURLMOPT_PIPELINING_SITE_BL ;
 scalar_t__ CURLMSG_DONE ;
 int CURL_GLOBAL_ALL ;
 int FD_ZERO (int *) ;
 int abort_on_test_timeout () ;
 int create_handles () ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_fdset (int *,int *,int *,int *,int*) ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int curl_multi_perform (int *,int*) ;
 int curl_multi_remove_handle (int *,scalar_t__) ;
 int curl_multi_timeout (int *,long*) ;
 int fprintf (int ,char*,int) ;
 int free_urls () ;
 scalar_t__* handles ;
 int libtest_arg2 ;
 int multi_init (int *) ;
 int multi_setopt (int *,int ,long) ;
 int num_handles ;
 scalar_t__ parse_url_file (int ) ;
 int printf (char*,int,int) ;
 int remove_handles () ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 long server_blacklist ;
 int setup_handle (char*,int *,int) ;
 long site_blacklist ;
 int start_test_timing () ;
 int stdout ;
 scalar_t__ tutil_tvdiff (struct timeval,struct timeval) ;
 struct timeval tutil_tvnow () ;
 scalar_t__* urltime ;

int test(char *URL)
{
  int res = 0;
  CURLM *m = ((void*)0);
  CURLMsg *msg;
  int msgs_left;
  int running = 0;
  int handlenum = 0;
  struct timeval last_handle_add;

  if(parse_url_file(libtest_arg2) <= 0)
    goto test_cleanup;

  start_test_timing();

  curl_global_init(CURL_GLOBAL_ALL);

  multi_init(m);

  create_handles();

  multi_setopt(m, CURLMOPT_PIPELINING, 1L);
  multi_setopt(m, CURLMOPT_MAX_HOST_CONNECTIONS, 2L);
  multi_setopt(m, CURLMOPT_MAX_PIPELINE_LENGTH, 3L);
  multi_setopt(m, CURLMOPT_CONTENT_LENGTH_PENALTY_SIZE, 15000L);
  multi_setopt(m, CURLMOPT_CHUNK_LENGTH_PENALTY_SIZE, 10000L);

  multi_setopt(m, CURLMOPT_PIPELINING_SITE_BL, site_blacklist);
  multi_setopt(m, CURLMOPT_PIPELINING_SERVER_BL, server_blacklist);

  last_handle_add = tutil_tvnow();

  for(;;) {
    struct timeval interval;
    struct timeval now;
    fd_set rd, wr, exc;
    int maxfd = -99;
    long timeout;

    interval.tv_sec = 1;
    interval.tv_usec = 0;

    if(handlenum < num_handles) {
      now = tutil_tvnow();
      if(tutil_tvdiff(now, last_handle_add) >= urltime[handlenum]) {
        fprintf(stdout, "Adding handle %d\n", handlenum);
        setup_handle(URL, m, handlenum);
        last_handle_add = now;
        handlenum++;
      }
    }

    curl_multi_perform(m, &running);

    abort_on_test_timeout();


    do {
      msg = curl_multi_info_read(m, &msgs_left);
      if(msg && msg->msg == CURLMSG_DONE) {
        int i;


        for(i = 0; i < num_handles; i++) {
          int found = (msg->easy_handle == handles[i]);
          if(found)
            break;
        }

        printf("Handle %d Completed with status %d\n", i, msg->data.result);
        curl_multi_remove_handle(m, handles[i]);
      }
    } while(msg);

    if(handlenum == num_handles && !running) {
      break;
    }

    FD_ZERO(&rd);
    FD_ZERO(&wr);
    FD_ZERO(&exc);

    curl_multi_fdset(m, &rd, &wr, &exc, &maxfd);



    curl_multi_timeout(m, &timeout);

    if(timeout < 0)
      timeout = 1;

    interval.tv_sec = timeout / 1000;
    interval.tv_usec = (timeout % 1000) * 1000;

    interval.tv_sec = 0;
    interval.tv_usec = 1000;

    select_test(maxfd + 1, &rd, &wr, &exc, &interval);

    abort_on_test_timeout();
  }

test_cleanup:

  remove_handles();



  curl_multi_cleanup(m);
  curl_global_cleanup();

  free_urls();
  return res;
}
