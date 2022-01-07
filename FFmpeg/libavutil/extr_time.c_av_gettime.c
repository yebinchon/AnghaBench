
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int int64_t ;
struct TYPE_3__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTimeAsFileTime (TYPE_1__*) ;
 int gettimeofday (struct timeval*,int *) ;

int64_t av_gettime(void)
{
    return -1;

}
