
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int perror (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int sleep (int) ;

int plat_wait_event(int *fds_hnds, int count, int timeout_ms)
{
 struct timeval tv, *timeout = ((void*)0);
 int i, ret, fdmax = -1;
 fd_set fdset;

 if (timeout_ms >= 0) {
  tv.tv_sec = timeout_ms / 1000;
  tv.tv_usec = (timeout_ms % 1000) * 1000;
  timeout = &tv;
 }

 FD_ZERO(&fdset);
 for (i = 0; i < count; i++) {
  if (fds_hnds[i] > fdmax) fdmax = fds_hnds[i];
  FD_SET(fds_hnds[i], &fdset);
 }

 ret = select(fdmax + 1, &fdset, ((void*)0), ((void*)0), timeout);
 if (ret == -1)
 {
  perror("plat_wait_event: select failed");
  sleep(1);
  return -1;
 }

 if (ret == 0)
  return -1;

 ret = -1;
 for (i = 0; i < count; i++)
  if (FD_ISSET(fds_hnds[i], &fdset))
   ret = fds_hnds[i];

 return ret;
}
