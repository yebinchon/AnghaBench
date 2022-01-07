
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef long int64_t ;


 int gettimeofday (struct timeval*,int *) ;

int64_t taosGetTimestampUs() {
  struct timeval systemTime;
  gettimeofday(&systemTime, ((void*)0));
  return (int64_t)systemTime.tv_sec * 1000000L + (uint64_t)systemTime.tv_usec;
}
