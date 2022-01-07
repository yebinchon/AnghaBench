
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ monotonic; } ;
struct TYPE_4__ {TYPE_1__ posix_time; } ;


 int CLOCK_MONOTONIC ;
 TYPE_2__ _glfw ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t getRawTime(void)
{
    {
        struct timeval tv;

        gettimeofday(&tv, ((void*)0));
        return (uint64_t) tv.tv_sec * (uint64_t) 1000000 + (uint64_t) tv.tv_usec;
    }
}
