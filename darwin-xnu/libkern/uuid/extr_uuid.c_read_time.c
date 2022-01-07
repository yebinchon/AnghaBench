
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;


 int nanotime (struct timespec*) ;

__attribute__((used)) static uint64_t
read_time(void)
{
 struct timespec tv;

 nanotime(&tv);

 return (tv.tv_sec * 10000000ULL) + (tv.tv_nsec / 100ULL) + 0x01B21DD213814000ULL;
}
