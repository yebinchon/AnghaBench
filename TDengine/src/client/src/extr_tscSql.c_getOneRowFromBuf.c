
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** tsrow; int row; } ;
struct TYPE_6__ {TYPE_1__ res; } ;
typedef TYPE_1__ SSqlRes ;
typedef TYPE_2__ SSqlObj ;


 int doSetResultRowData (TYPE_2__*) ;

__attribute__((used)) static void **getOneRowFromBuf(SSqlObj *pSql) {
  doSetResultRowData(pSql);

  SSqlRes *pRes = &pSql->res;
  pRes->row++;

  return pRes->tsrow;
}
