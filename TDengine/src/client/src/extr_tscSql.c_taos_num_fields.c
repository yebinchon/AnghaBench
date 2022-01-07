
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numOfOutputCols; int numOfHiddenCols; } ;
struct TYPE_4__ {TYPE_3__ fieldsInfo; } ;
struct TYPE_5__ {TYPE_1__ cmd; struct TYPE_5__* signature; } ;
typedef int TAOS_RES ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SFieldInfo ;



int taos_num_fields(TAOS_RES *res) {
  SSqlObj *pSql = (SSqlObj *)res;
  if (pSql == ((void*)0) || pSql->signature != pSql) return 0;

  SFieldInfo *pFieldsInfo = &pSql->cmd.fieldsInfo;

  return (pFieldsInfo->numOfOutputCols - pFieldsInfo->numOfHiddenCols);
}
