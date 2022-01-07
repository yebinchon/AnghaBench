
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_6__ {TYPE_2__* pSql; struct TYPE_6__* signature; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
typedef int TAOS ;
typedef TYPE_3__ STscObj ;


 int TSDB_CODE_OTHERS ;
 int globalCode ;

int taos_errno(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;
  int code;

  if (pObj == ((void*)0) || pObj->signature != pObj) return globalCode;

  if ((int8_t)(pObj->pSql->res.code) == -1)
    code = TSDB_CODE_OTHERS;
  else
    code = pObj->pSql->res.code;

  return code;
}
