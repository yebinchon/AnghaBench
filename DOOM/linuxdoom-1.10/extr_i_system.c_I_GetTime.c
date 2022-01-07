
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;


 int TICRATE ;
 int gettimeofday (struct timeval*,struct timezone*) ;

int I_GetTime (void)
{
    struct timeval tp;
    struct timezone tzp;
    int newtics;
    static int basetime=0;

    gettimeofday(&tp, &tzp);
    if (!basetime)
 basetime = tp.tv_sec;
    newtics = (tp.tv_sec-basetime)*TICRATE + tp.tv_usec*TICRATE/1000000;
    return newtics;
}
