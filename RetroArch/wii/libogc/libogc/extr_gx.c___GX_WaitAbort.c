
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ diff_ticks (scalar_t__,scalar_t__) ;
 scalar_t__ gettime () ;

__attribute__((used)) static void __GX_WaitAbort(u32 delay)
{
 u64 start,end;

 start = gettime();
 while(1) {
  end = gettime();
  if(diff_ticks(start,end)>=(u64)delay) break;
 };
}
