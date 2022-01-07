
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;


 TYPE_1__* monitor ;
 int monitorError (char*,int ) ;
 int sprintf (char*,char*,float,float) ;
 int taosGetProcIO (float*,float*) ;

int monitorBuildIoSql(char *sql) {
  float readKB = 0, writeKB = 0;
  bool suc = taosGetProcIO(&readKB, &writeKB);
  if (!suc) {
    monitorError("monitor:%p, get io info failed.", monitor->conn);
  }

  return sprintf(sql, ", %f, %f", readKB, writeKB);
}
