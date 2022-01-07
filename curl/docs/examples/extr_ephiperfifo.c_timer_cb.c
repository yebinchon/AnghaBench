
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ssize_t ;
struct TYPE_4__ {int tfd; int still_running; int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLMcode ;


 int CURL_SOCKET_TIMEOUT ;
 scalar_t__ EAGAIN ;
 int MSG_OUT ;
 int check_multi_info (TYPE_1__*) ;
 int curl_multi_socket_action (int ,int ,int ,int *) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,int) ;
 int mcode_or_die (char*,int ) ;
 int perror (char*) ;
 int read (int,int *,int) ;
 int stderr ;

__attribute__((used)) static void timer_cb(GlobalInfo* g, int revents)
{
  CURLMcode rc;
  uint64_t count = 0;
  ssize_t err = 0;

  err = read(g->tfd, &count, sizeof(uint64_t));
  if(err == -1) {





    if(errno == EAGAIN) {
      fprintf(MSG_OUT, "EAGAIN on tfd %d\n", g->tfd);
      return;
    }
  }
  if(err != sizeof(uint64_t)) {
    fprintf(stderr, "read(tfd) == %ld", err);
    perror("read(tfd)");
  }

  rc = curl_multi_socket_action(g->multi,
                                  CURL_SOCKET_TIMEOUT, 0, &g->still_running);
  mcode_or_die("timer_cb: curl_multi_socket_action", rc);
  check_multi_info(g);
}
