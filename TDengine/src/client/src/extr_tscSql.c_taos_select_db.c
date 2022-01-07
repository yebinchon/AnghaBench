
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* signature; } ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;


 int TSDB_CODE_DISCONNECTED ;
 int globalCode ;
 int sprintf (char*,char*,char const*) ;
 int taos_query (int *,char*) ;

int taos_select_db(TAOS *taos, const char *db) {
  char sql[64];

  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return TSDB_CODE_DISCONNECTED;
  }

  sprintf(sql, "use %s", db);

  return taos_query(taos, sql);
}
