
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_23__ ;
typedef struct TYPE_40__ TYPE_22__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_12__ ;
typedef struct TYPE_37__ TYPE_11__ ;
typedef struct TYPE_36__ TYPE_10__ ;


typedef size_t int32_t ;
typedef int int16_t ;
struct TYPE_49__ {TYPE_3__* pMeterMeta; } ;
struct TYPE_48__ {int bytes; int type; } ;
struct TYPE_40__ {size_t numOfCols; int * pColList; } ;
struct TYPE_47__ {int type; TYPE_22__ colList; int groupbyExpr; int limit; scalar_t__ nAggTimeInterval; scalar_t__ numOfCols; int tagCond; int fieldsInfo; int exprsInfo; } ;
struct TYPE_46__ {int numOfParams; TYPE_4__* param; } ;
struct TYPE_39__ {int qhandle; scalar_t__ numOfRows; } ;
struct TYPE_45__ {TYPE_7__ cmd; int numOfSubs; struct TYPE_45__** pSubs; TYPE_1__ res; } ;
struct TYPE_44__ {int i64Key; } ;
struct TYPE_43__ {int uid; } ;
struct TYPE_42__ {int numOfTotal; } ;
struct TYPE_41__ {size_t numOfCols; TYPE_12__* pColList; } ;
struct TYPE_38__ {scalar_t__ numOfFilters; } ;
struct TYPE_37__ {int member_1; int member_0; } ;
struct TYPE_36__ {TYPE_23__ colList; int groupbyExpr; int tagCond; int fieldsInfo; int uid; int exprsInfo; TYPE_2__* pState; } ;
typedef TYPE_5__ SSqlObj ;
typedef int SSqlGroupbyExpr ;
typedef TYPE_6__ SSqlExpr ;
typedef TYPE_7__ SSqlCmd ;
typedef TYPE_8__ SSchema ;
typedef TYPE_9__ SMeterMetaInfo ;
typedef int SLimitVal ;
typedef TYPE_10__ SJoinSubquerySupporter ;
typedef TYPE_11__ SColumnIndex ;
typedef TYPE_12__ SColumnBase ;


 int POINTER_BYTES ;
 int PRIMARYKEY_TIMESTAMP_COL_INDEX ;
 scalar_t__ QUERY_IS_JOIN_QUERY (int ) ;
 size_t TSDB_CODE_CLI_OUT_OF_MEMORY ;
 int TSDB_COL_NORMAL ;
 int TSDB_DATA_TYPE_BINARY ;
 int TSDB_FUNC_TS_COMP ;
 int TSDB_QUERY_TYPE_SUBQUERY ;
 int addGroupInfoForSubquery (TYPE_5__*,TYPE_5__*,int ) ;
 int addRequiredTagColumn (TYPE_7__*,int ,int ) ;
 TYPE_5__* createSubqueryObj (TYPE_5__*,int ,int ,int ,TYPE_10__*,int *) ;
 TYPE_5__** malloc (int) ;
 int memset (int *,int ,int) ;
 int tscAddSpecialColumnForSelect (TYPE_7__*,int ,int ,TYPE_11__*,TYPE_8__*,int ) ;
 int tscColumnBaseCopy (int *,TYPE_12__*) ;
 int tscColumnBaseInfoCopy (TYPE_23__*,TYPE_22__*,int ) ;
 int tscColumnBaseInfoUpdateTableIndex (TYPE_22__*,int ) ;
 int tscFieldInfoCopyAll (int *,int *) ;
 int tscFreeSqlCmdData (TYPE_7__*) ;
 int tscGetJoinTagColIndexByUid (TYPE_7__*,int ) ;
 TYPE_9__* tscGetMeterMetaInfo (TYPE_7__*,int ) ;
 int tscJoinQueryCallback ;
 size_t tscProcessSql (TYPE_5__*) ;
 int tscSqlExprCopy (int *,int *,int ) ;
 TYPE_6__* tscSqlExprGet (TYPE_7__*,int ) ;
 int tscTagCondCopy (int *,int *) ;

int32_t tscLaunchJoinSubquery(SSqlObj *pSql, int16_t tableIndex, int16_t vnodeIdx, SJoinSubquerySupporter *pSupporter) {
  SSqlCmd *pCmd = &pSql->cmd;

  pSql->res.qhandle = 0x1;
  pSql->res.numOfRows = 0;

  if (pSql->pSubs == ((void*)0)) {
    pSql->pSubs = malloc(POINTER_BYTES * pSupporter->pState->numOfTotal);
    if (pSql->pSubs == ((void*)0)) {
      return TSDB_CODE_CLI_OUT_OF_MEMORY;
    }
  }

  SSqlObj *pNew = createSubqueryObj(pSql, vnodeIdx, tableIndex, tscJoinQueryCallback, pSupporter, ((void*)0));
  if (pNew == ((void*)0)) {
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  pSql->pSubs[pSql->numOfSubs++] = pNew;

  if (QUERY_IS_JOIN_QUERY(pCmd->type)) {
    addGroupInfoForSubquery(pSql, pNew, tableIndex);


    tscColumnBaseInfoUpdateTableIndex(&pNew->cmd.colList, 0);
    tscColumnBaseInfoCopy(&pSupporter->colList, &pNew->cmd.colList, 0);

    tscSqlExprCopy(&pSupporter->exprsInfo, &pNew->cmd.exprsInfo, pSupporter->uid);

    tscFieldInfoCopyAll(&pNew->cmd.fieldsInfo, &pSupporter->fieldsInfo);
    tscTagCondCopy(&pSupporter->tagCond, &pNew->cmd.tagCond);
    pSupporter->groupbyExpr = pNew->cmd.groupbyExpr;

    pNew->cmd.numOfCols = 0;
    pNew->cmd.nAggTimeInterval = 0;
    memset(&pNew->cmd.limit, 0, sizeof(SLimitVal));
    memset(&pNew->cmd.groupbyExpr, 0, sizeof(SSqlGroupbyExpr));


    tscFreeSqlCmdData(&pNew->cmd);

    SSchema colSchema = {.type = TSDB_DATA_TYPE_BINARY, .bytes = 1};
    SColumnIndex index = {0, PRIMARYKEY_TIMESTAMP_COL_INDEX};

    tscAddSpecialColumnForSelect(&pNew->cmd, 0, TSDB_FUNC_TS_COMP, &index, &colSchema, TSDB_COL_NORMAL);


    SSqlExpr *pExpr = tscSqlExprGet(&pNew->cmd, 0);

    SMeterMetaInfo *pMeterMetaInfo = tscGetMeterMetaInfo(&pNew->cmd, 0);
    int16_t tagColIndex = tscGetJoinTagColIndexByUid(&pNew->cmd, pMeterMetaInfo->pMeterMeta->uid);

    pExpr->param->i64Key = tagColIndex;
    pExpr->numOfParams = 1;

    addRequiredTagColumn(pCmd, tagColIndex, 0);


    for (int32_t i = 0; i < pSupporter->colList.numOfCols; ++i) {
      SColumnBase *pColBase = &pSupporter->colList.pColList[i];
      if (pColBase->numOfFilters > 0) {
        tscColumnBaseCopy(&pNew->cmd.colList.pColList[pNew->cmd.colList.numOfCols], pColBase);
        pNew->cmd.colList.numOfCols++;
      }
    }
  } else {
    pNew->cmd.type |= TSDB_QUERY_TYPE_SUBQUERY;
  }

  return tscProcessSql(pNew);
}
