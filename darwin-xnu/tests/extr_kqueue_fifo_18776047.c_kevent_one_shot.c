
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct kevent {int dummy; } ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_ONESHOT ;
 int EV_SET (struct kevent*,int,int,int,int ,int ,int *) ;
 int T_ASSERT_GE (int,int ,char*) ;
 int T_ASSERT_POSIX_ZERO (int,char*,int,int) ;
 int T_LOG (char*,char*) ;
 int T_QUIET ;
 int kevent (int,struct kevent*,int,int *,int ,struct timespec*) ;

void
kevent_one_shot(int kq, int fd, int filter)
{
 int retval = 0;
 struct timespec t_zero = {0, 0};
 struct kevent kev[1];

 T_QUIET;
 T_ASSERT_GE(kq, 0, "ensure kq is valid");
 T_LOG("kevent doing ONESHOT %s", filter == EVFILT_READ ? "read" : "write");

 EV_SET(kev, fd, filter, EV_ADD | EV_ONESHOT, 0, 0, ((void*)0));
 retval = kevent(kq, kev, 1, ((void*)0), 0, &t_zero);
 T_QUIET;
 T_ASSERT_POSIX_ZERO(retval, "ONESHOT kevent for fd %d, filter %d", fd, filter);
}
