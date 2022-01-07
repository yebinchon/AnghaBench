
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;



__attribute__((used)) static int _timespec_is_zero(struct timespec *ts)
{
   return ((ts->tv_sec == 0) && (ts->tv_nsec == 0));
}
