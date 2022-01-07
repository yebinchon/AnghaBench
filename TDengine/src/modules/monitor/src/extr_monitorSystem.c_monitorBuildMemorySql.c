
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;


 TYPE_1__* monitor ;
 int monitorError (char*,int ) ;
 int sprintf (char*,char*,float,float,int) ;
 int taosGetProcMemory (float*) ;
 int taosGetSysMemory (float*) ;
 int tsTotalMemoryMB ;

int monitorBuildMemorySql(char *sql) {
  float sysMemoryUsedMB = 0;
  bool suc = taosGetSysMemory(&sysMemoryUsedMB);
  if (!suc) {
    monitorError("monitor:%p, get sys memory info failed.", monitor->conn);
  }

  float procMemoryUsedMB = 0;
  suc = taosGetProcMemory(&procMemoryUsedMB);
  if (!suc) {
    monitorError("monitor:%p, get proc memory info failed.", monitor->conn);
  }

  return sprintf(sql, ", %f, %f, %d", procMemoryUsedMB, sysMemoryUsedMB, tsTotalMemoryMB);
}
