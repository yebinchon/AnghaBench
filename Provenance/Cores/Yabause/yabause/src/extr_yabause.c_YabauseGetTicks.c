
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int LARGE_INTEGER ;


 int QueryPerformanceCounter (int *) ;
 scalar_t__ SDL_GetTicks () ;
 int gettime () ;
 int gettimeofday (struct timeval*,int *) ;
 int sceKernelGetSystemTimeWide () ;
 scalar_t__ timer_ms_gettime64 () ;

u64 YabauseGetTicks(void) {
}
