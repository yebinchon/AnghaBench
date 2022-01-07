
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int precision; } ;
struct TYPE_4__ {TYPE_1__ res; struct TYPE_4__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_2__ SSqlObj ;



int taos_result_precision(TAOS_RES *res) {
  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql == ((void*)0) || pSql->signature != pSql) return 0;

  return pSql->res.precision;
}
