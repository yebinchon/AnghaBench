
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pSql; struct TYPE_6__* signature; } ;
struct TYPE_4__ {int numOfRows; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
typedef int TAOS ;
typedef TYPE_3__ STscObj ;



int taos_affected_rows(TAOS *taos) {
  STscObj *pObj = (STscObj *)taos;
  if (pObj == ((void*)0) || pObj->signature != pObj) return 0;

  return (pObj->pSql->res.numOfRows);
}
