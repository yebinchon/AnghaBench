
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timezone {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;


 scalar_t__ gettimeofday (struct timeval*,struct timezone*) ;

uint32_t xTaskGetTickCount(void)
{
    struct timeval tv;
    struct timezone tz;
    if (gettimeofday(&tv, &tz) == 0) {
        return (tv.tv_sec * 1000) + (tv.tv_usec / 1000);
    }
    return 0;
}
