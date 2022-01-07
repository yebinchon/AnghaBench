
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rusage {int ru_stime; int ru_utime; } ;
struct TYPE_2__ {int ru_stime; int ru_utime; } ;


 int RUSAGE_SELF ;
 scalar_t__ enableTimer ;
 int getrusage (int ,struct rusage*) ;
 int printf (char*,double,double) ;
 TYPE_1__ sBegin ;
 double timeDiff (int *,int *) ;

__attribute__((used)) static void endTimer(void){
  if( enableTimer ){
    struct rusage sEnd;
    getrusage(RUSAGE_SELF, &sEnd);
    printf("CPU Time: user %f sys %f\n",
       timeDiff(&sBegin.ru_utime, &sEnd.ru_utime),
       timeDiff(&sBegin.ru_stime, &sEnd.ru_stime));
  }
}
