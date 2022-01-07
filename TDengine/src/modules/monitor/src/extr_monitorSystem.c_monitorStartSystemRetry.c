
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * initTimer; } ;


 TYPE_1__* monitor ;
 int monitorInitConn ;
 int taosTmrReset (int ,int,int *,int ,int **) ;
 int tscTmr ;

void monitorStartSystemRetry() {
  if (monitor->initTimer != ((void*)0)) {
    taosTmrReset(monitorInitConn, 3000, ((void*)0), tscTmr, &monitor->initTimer);
  }
}
