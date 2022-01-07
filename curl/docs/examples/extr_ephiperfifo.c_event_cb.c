
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct itimerspec {int dummy; } ;
struct TYPE_4__ {scalar_t__ still_running; int tfd; int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLMcode ;


 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int MSG_OUT ;
 int check_multi_info (TYPE_1__*) ;
 int curl_multi_socket_action (int ,int,int,scalar_t__*) ;
 int fprintf (int ,char*) ;
 int mcode_or_die (char*,int ) ;
 int memset (struct itimerspec*,int ,int) ;
 int timerfd_settime (int ,int ,struct itimerspec*,int *) ;

__attribute__((used)) static void event_cb(GlobalInfo *g, int fd, int revents)
{
  CURLMcode rc;
  struct itimerspec its;

  int action = ((revents & EPOLLIN) ? CURL_CSELECT_IN : 0) |
               ((revents & EPOLLOUT) ? CURL_CSELECT_OUT : 0);

  rc = curl_multi_socket_action(g->multi, fd, action, &g->still_running);
  mcode_or_die("event_cb: curl_multi_socket_action", rc);

  check_multi_info(g);
  if(g->still_running <= 0) {
    fprintf(MSG_OUT, "last transfer done, kill timeout\n");
    memset(&its, 0, sizeof(struct itimerspec));
    timerfd_settime(g->tfd, 0, &its, ((void*)0));
  }
}
