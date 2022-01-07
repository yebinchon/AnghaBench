
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

void end_timer(struct timeval *tp) {
  struct timeval tend;
  gettimeofday(&tend, ((void*)0));
  if(tend.tv_usec >= tp->tv_usec) {
    tp->tv_sec = tend.tv_sec - tp->tv_sec;
    tp->tv_usec = tend.tv_usec - tp->tv_usec;
  }
  else {
    tp->tv_sec = tend.tv_sec - tp->tv_sec - 1;
    tp->tv_usec = tend.tv_usec - tp->tv_usec + 1000000;
  }
}
