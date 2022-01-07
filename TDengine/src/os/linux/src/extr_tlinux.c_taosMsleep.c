
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int select (int ,int *,int *,int *,struct timeval*) ;

void taosMsleep(int mseconds) {
  struct timeval timeout;
  int seconds, useconds;

  seconds = mseconds / 1000;
  useconds = (mseconds % 1000) * 1000;
  timeout.tv_sec = seconds;
  timeout.tv_usec = useconds;






  select(0, ((void*)0), ((void*)0), ((void*)0), &timeout);


}
