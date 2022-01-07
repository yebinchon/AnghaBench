
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int ) ;
 int spend_cycles (int) ;

__attribute__((used)) static void simpleWait(int thissec, int lim_time)
{
 struct timeval tval;

 spend_cycles(1024);
 gettimeofday(&tval, 0);
 if(thissec != tval.tv_sec) tval.tv_usec+=1000000;

 while(tval.tv_usec < lim_time)
 {
  spend_cycles(1024);
  gettimeofday(&tval, 0);
  if(thissec != tval.tv_sec) tval.tv_usec+=1000000;
 }
}
