
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int taosGetDisk () ;
 int taosTmrReset (void (*) (void*,void*),int,int *,int ,int *) ;
 int tscCheckDiskUsageTmr ;
 int tscTmr ;

void tscCheckDiskUsage(void *para, void *unused) {
  taosGetDisk();
  taosTmrReset(tscCheckDiskUsage, 1000, ((void*)0), tscTmr, &tscCheckDiskUsageTmr);
}
