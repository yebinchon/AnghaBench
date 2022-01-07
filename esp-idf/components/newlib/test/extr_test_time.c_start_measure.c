
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int int64_t ;


 int esp_timer_get_time () ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void start_measure(int64_t* sys_time, int64_t* real_time)
{
    struct timeval tv_time;
    int64_t t1, t2;
    do {
        t1 = esp_timer_get_time();
        gettimeofday(&tv_time, ((void*)0));
        t2 = esp_timer_get_time();
    } while (t2 - t1 > 40);
    *real_time = t2;
    *sys_time = (int64_t)tv_time.tv_sec * 1000000L + tv_time.tv_usec;
}
