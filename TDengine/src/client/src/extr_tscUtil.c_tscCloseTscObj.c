
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int code; } ;
struct TYPE_10__ {TYPE_1__ res; } ;
struct TYPE_9__ {int mutex; int pTimer; TYPE_3__* pSql; int * signature; } ;
typedef TYPE_2__ STscObj ;
typedef TYPE_3__ SSqlObj ;


 int globalCode ;
 int pthread_mutex_destroy (int *) ;
 int taosTmrStopA (int *) ;
 int tfree (TYPE_2__*) ;
 int tscFreeSqlObj (TYPE_3__*) ;
 int tscTrace (char*,TYPE_2__*) ;

void tscCloseTscObj(STscObj* pObj) {
  pObj->signature = ((void*)0);
  SSqlObj* pSql = pObj->pSql;
  globalCode = pSql->res.code;

  taosTmrStopA(&(pObj->pTimer));
  tscFreeSqlObj(pSql);

  pthread_mutex_destroy(&pObj->mutex);
  tscTrace("%p DB connection is closed", pObj);
  tfree(pObj);
}
