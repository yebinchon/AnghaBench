
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;


 TYPE_1__* monitor ;
 int monitorError (char*,int ) ;
 int sprintf (char*,char*,float) ;
 int taosGetBandSpeed (float*) ;

int monitorBuildBandSql(char *sql) {
  float bandSpeedKb = 0;
  bool suc = taosGetBandSpeed(&bandSpeedKb);
  if (!suc) {
    monitorError("monitor:%p, get bandwidth speed failed.", monitor->conn);
  }

  return sprintf(sql, ", %f", bandSpeedKb);
}
