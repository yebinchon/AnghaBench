
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fire; } ;
typedef TYPE_1__ wd_cntrl ;
typedef int u64 ;
typedef int u32 ;
struct uulc {int ull; int* ul; } ;
typedef int s64 ;


 int diff_ticks (int,int ) ;
 int gettime () ;
 int mtdec (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void __lwp_wd_settimer(wd_cntrl *wd)
{
 u64 now;
 s64 diff;
 union uulc {
  u64 ull;
  u32 ul[2];
 } v;

 now = gettime();
 v.ull = diff = diff_ticks(now,wd->fire);



 if(diff<=0) {



  wd->fire = 0;
  mtdec(0);
 } else if(diff<0x0000000080000000LL) {



  mtdec(v.ul[1]);
 } else {



  mtdec(0x7fffffff);
 }
}
