
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int data; int flags; int filter; } ;


 scalar_t__ EBADF ;
 int EVFILT_TIMER ;
 int EV_ADD ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 scalar_t__ errno ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 int timeout_ms ;

__attribute__((used)) static void *
poll_kqueue(void *arg)
{
 int fd = (int)arg;

 struct kevent kev = {
  .filter = EVFILT_TIMER,
  .flags = EV_ADD,
  .data = timeout_ms,
 };

 int rv = kevent(fd, &kev, 1, ((void*)0), 0, ((void*)0));

 if (rv == -1 && errno == EBADF) {

  T_LOG("kqueue already closed?");
  return ((void*)0);
 } else {
  T_QUIET; T_ASSERT_POSIX_SUCCESS(rv, "kevent");
 }

 while ((rv = kevent(fd, ((void*)0), 0, &kev, 1, ((void*)0))) == 1) {
  T_LOG("poll\n");
 }

 if (rv != -1 || errno != EBADF) {
  T_ASSERT_POSIX_SUCCESS(rv, "fd should be closed");
 }

 return ((void*)0);
}
