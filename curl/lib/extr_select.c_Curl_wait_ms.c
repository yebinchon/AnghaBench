
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct curltime {int dummy; } ;


 struct curltime Curl_now () ;
 int EINVAL ;
 int ELAPSED_MS () ;
 scalar_t__ ERROR_NOT_EINTR (int) ;
 int SET_SOCKERRNO (int ) ;
 int SOCKERRNO ;
 int Sleep (int) ;
 int delay (int) ;
 int poll (int *,int ,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;

int Curl_wait_ms(int timeout_ms)
{


  struct timeval pending_tv;

  struct curltime initial_tv;
  int pending_ms;

  int r = 0;

  if(!timeout_ms)
    return 0;
  if(timeout_ms < 0) {
    SET_SOCKERRNO(EINVAL);
    return -1;
  }





  pending_ms = timeout_ms;
  initial_tv = Curl_now();
  do {
    int error;



    pending_tv.tv_sec = pending_ms / 1000;
    pending_tv.tv_usec = (pending_ms % 1000) * 1000;
    r = select(0, ((void*)0), ((void*)0), ((void*)0), &pending_tv);

    if(r != -1)
      break;
    error = SOCKERRNO;
    if(error && ERROR_NOT_EINTR(error))
      break;
    pending_ms = timeout_ms - ELAPSED_MS();
    if(pending_ms <= 0) {
      r = 0;
      break;
    }
  } while(r == -1);

  if(r)
    r = -1;
  return r;
}
