
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int int64 ;


 int gettimeofday (struct timeval*,int ) ;
 int warnx (char*) ;

int64
nanoseconds(void)
{
    int r;
    struct timeval tv;

    r = gettimeofday(&tv, 0);
    if (r != 0) return warnx("gettimeofday"), -1;

    return ((int64)tv.tv_sec)*1000000000 + ((int64)tv.tv_usec)*1000;
}
