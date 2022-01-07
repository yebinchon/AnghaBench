
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int EINTR ;
 int EINVAL ;
 int Sleep (int) ;
 int delay (int) ;
 int errno ;
 int poll (int *,int ,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 scalar_t__ timediff (struct timeval,struct timeval) ;
 struct timeval tvnow () ;

int wait_ms(int timeout_ms)
{


  struct timeval pending_tv;

  struct timeval initial_tv;
  int pending_ms;

  int r = 0;

  if(!timeout_ms)
    return 0;
  if(timeout_ms < 0) {
    errno = EINVAL;
    return -1;
  }





  pending_ms = timeout_ms;
  initial_tv = tvnow();
  do {
    int error;



    pending_tv.tv_sec = pending_ms / 1000;
    pending_tv.tv_usec = (pending_ms % 1000) * 1000;
    r = select(0, ((void*)0), ((void*)0), ((void*)0), &pending_tv);

    if(r != -1)
      break;
    error = errno;
    if(error && (error != EINTR))
      break;
    pending_ms = timeout_ms - (int)timediff(tvnow(), initial_tv);
    if(pending_ms <= 0)
      break;
  } while(r == -1);

  if(r)
    r = -1;
  return r;
}
