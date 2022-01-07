
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int sprintf (char*,char*,double,int) ;
 double tsAvailDataDirGB ;
 double tsTotalDataDirGB ;

int monitorBuildDiskSql(char *sql) {
  return sprintf(sql, ", %f, %d", (tsTotalDataDirGB - tsAvailDataDirGB), (int32_t)tsTotalDataDirGB);
}
