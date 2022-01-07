
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;



__attribute__((used)) static int _timespec_is_larger(struct timespec *left, struct timespec *right)
{
   if (left->tv_sec != right->tv_sec)
      return left->tv_sec > right->tv_sec;
   else
      return left->tv_nsec > right->tv_nsec;
}
