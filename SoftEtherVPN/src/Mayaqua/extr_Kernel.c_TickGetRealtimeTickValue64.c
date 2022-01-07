
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tz ;
typedef int tv ;
struct timezone {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef unsigned long long UINT64 ;
typedef scalar_t__ UINT32 ;


 int gettimeofday (struct timezone*,struct timezone*) ;
 int memset (struct timezone*,int ,int) ;

UINT64 TickGetRealtimeTickValue64()
{
 struct timeval tv;
 struct timezone tz;
 UINT64 ret;

 memset(&tv, 0, sizeof(tv));
 memset(&tz, 0, sizeof(tz));

 gettimeofday(&tv, &tz);

 if (sizeof(tv.tv_sec) != 4)
 {
  ret = (UINT64)tv.tv_sec * 1000ULL + (UINT64)tv.tv_usec / 1000ULL;
 }
 else
 {
  ret = (UINT64)((UINT64)((UINT32)tv.tv_sec)) * 1000ULL + (UINT64)tv.tv_usec / 1000ULL;
 }

 return ret;
}
