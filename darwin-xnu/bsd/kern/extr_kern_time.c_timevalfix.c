
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;



void
timevalfix(
 struct timeval *t1)
{

 if (t1->tv_usec < 0) {
  t1->tv_sec--;
  t1->tv_usec += 1000000;
 }
 if (t1->tv_usec >= 1000000) {
  t1->tv_sec++;
  t1->tv_usec -= 1000000;
 }
}
