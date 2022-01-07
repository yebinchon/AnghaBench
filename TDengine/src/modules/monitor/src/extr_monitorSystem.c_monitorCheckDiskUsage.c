
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int diskTimer; } ;


 int CHECK_INTERVAL ;
 TYPE_1__* monitor ;
 int taosGetDisk () ;
 int taosTmrReset (void (*) (void*,void*),int ,int *,int ,int *) ;
 int tscTmr ;

void monitorCheckDiskUsage(void *para, void *unused) {
  taosGetDisk();
  taosTmrReset(monitorCheckDiskUsage, CHECK_INTERVAL, ((void*)0), tscTmr, &monitor->diskTimer);
}
