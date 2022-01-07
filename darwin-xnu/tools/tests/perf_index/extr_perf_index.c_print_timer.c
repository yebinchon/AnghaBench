
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int printf (char*,int ,int ) ;

void print_timer(struct timeval *tp) {
  printf("%ld.%06d\n", tp->tv_sec, tp->tv_usec);
}
