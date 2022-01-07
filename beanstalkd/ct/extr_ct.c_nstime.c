
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int int64 ;


 int CLOCK_MONOTONIC ;
 int Second ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static int64
nstime()
{
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (int64)(t.tv_sec)*Second + t.tv_nsec;
}
