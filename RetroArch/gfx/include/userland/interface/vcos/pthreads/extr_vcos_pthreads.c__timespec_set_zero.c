
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void _timespec_set_zero(struct timespec *ts)
{
   ts->tv_sec = ts->tv_nsec = 0;
}
