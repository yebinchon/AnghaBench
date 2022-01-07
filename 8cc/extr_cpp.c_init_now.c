
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int localtime_r (int *,int *) ;
 int now ;
 int time (int *) ;

void init_now() {
    time_t timet = time(((void*)0));
    localtime_r(&timet, &now);
}
