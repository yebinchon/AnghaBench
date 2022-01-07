
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int av_gettime () ;

__attribute__((used)) static uint64_t get_current_time_in_sec(void)
{
    return av_gettime() / 1000000;
}
