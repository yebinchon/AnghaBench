
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pSql; struct TYPE_2__* signature; } ;
typedef int TAOS_RES ;
typedef int TAOS ;
typedef TYPE_1__ STscObj ;


 int TSDB_CODE_DISCONNECTED ;
 int globalCode ;

TAOS_RES *taos_use_result(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) {
    globalCode = TSDB_CODE_DISCONNECTED;
    return ((void*)0);
  }

  return pObj->pSql;
}
