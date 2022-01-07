
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

unsigned int plat_get_ticks_us(void)
{
 struct timeval tv;
 unsigned int ret;

 gettimeofday(&tv, ((void*)0));

 ret = (unsigned)tv.tv_sec * 1000000;
 ret += (unsigned)tv.tv_usec;

 return ret;
}
