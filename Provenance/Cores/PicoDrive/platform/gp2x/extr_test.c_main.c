
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;


 int gettimeofday (struct timeval*,int ) ;
 int gp2x_init () ;
 int printf (char*,int) ;
 int spend_cycles (int) ;

int main(void)
{
 struct timeval tval;
 int thissec = 0, frames_done = 0;

 gp2x_init();

 for (;;)
 {
  gettimeofday(&tval, 0);

  if(thissec != tval.tv_sec)
  {
   thissec = tval.tv_sec;

   printf("frames_done: %i\n", frames_done);
   frames_done = 0;
  }





  spend_cycles(1000);
  frames_done++;
 }

}
