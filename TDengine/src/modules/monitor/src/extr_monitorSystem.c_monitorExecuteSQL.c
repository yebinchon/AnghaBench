
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn; } ;


 TYPE_1__* monitor ;
 int monitorTrace (char*,int ,char*) ;
 int taos_query_a (int ,char*,int *,int *) ;

void monitorExecuteSQL(char *sql) {
  monitorTrace("monitor:%p, execute sql: %s", monitor->conn, sql);
  taos_query_a(monitor->conn, sql, ((void*)0), ((void*)0));
}
