
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int monitorPrint (char*) ;
 int monitorStopSystem () ;

void monitorCleanUpSystem() {
  monitorPrint("monitor service cleanup");
  monitorStopSystem();
}
