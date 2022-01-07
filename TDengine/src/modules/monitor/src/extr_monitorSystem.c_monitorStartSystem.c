
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initTimer; } ;


 TYPE_1__* monitor ;
 int monitorInitConn ;
 int monitorInitSystem () ;
 int taosTmrReset (int ,int,int *,int ,int *) ;
 int tscTmr ;

int monitorStartSystem() {
  if (monitor == ((void*)0)) {
    monitorInitSystem();
  }
  taosTmrReset(monitorInitConn, 10, ((void*)0), tscTmr, &monitor->initTimer);
  return 0;
}
