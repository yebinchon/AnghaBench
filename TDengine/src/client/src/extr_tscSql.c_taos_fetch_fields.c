
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pFields; } ;
struct TYPE_5__ {TYPE_1__ fieldsInfo; } ;
struct TYPE_6__ {TYPE_2__ cmd; struct TYPE_6__* signature; } ;
typedef int TAOS_RES ;
typedef int TAOS_FIELD ;
typedef TYPE_3__ SSqlObj ;



TAOS_FIELD *taos_fetch_fields(TAOS_RES *res) {
  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql == ((void*)0) || pSql->signature != pSql) return 0;

  return pSql->cmd.fieldsInfo.pFields;
}
