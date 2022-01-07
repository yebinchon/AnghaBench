
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {size_t vnodeIdx; } ;
struct TYPE_12__ {int type; } ;
struct TYPE_13__ {struct TYPE_13__** pSubs; TYPE_1__ cmd; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SRetrieveSupport ;


 int TSDB_QUERY_TYPE_STABLE_SUBQUERY ;
 TYPE_2__* createSubqueryObj (TYPE_2__*,size_t,int ,int ,TYPE_3__*,TYPE_2__*) ;
 int tscRetrieveDataRes ;

__attribute__((used)) static SSqlObj *tscCreateSqlObjForSubquery(SSqlObj *pSql, SRetrieveSupport *trsupport, SSqlObj *prevSqlObj) {
  SSqlObj *pNew = createSubqueryObj(pSql, trsupport->vnodeIdx, 0, tscRetrieveDataRes, trsupport, prevSqlObj);
  if (pNew != ((void*)0)) {
    pNew->cmd.type |= TSDB_QUERY_TYPE_STABLE_SUBQUERY;
    pSql->pSubs[trsupport->vnodeIdx] = pNew;
  }

  return pNew;
}
