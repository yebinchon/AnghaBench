
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int timevalfix (struct timeval*) ;

void
timevalsub(
 struct timeval *t1,
 struct timeval *t2)
{

 t1->tv_sec -= t2->tv_sec;
 t1->tv_usec -= t2->tv_usec;
 timevalfix(t1);
}
