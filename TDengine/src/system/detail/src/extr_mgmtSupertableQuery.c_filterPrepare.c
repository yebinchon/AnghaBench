
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int nType; } ;
typedef TYPE_3__ tVariant ;
struct TYPE_14__ {int nSQLBinaryOptr; TYPE_2__* pLeft; TYPE_1__* pRight; TYPE_5__* info; } ;
typedef TYPE_4__ tSQLBinaryExpr ;
struct TYPE_16__ {int type; } ;
struct TYPE_15__ {TYPE_6__ sch; int q; int optr; int compare; scalar_t__ offset; scalar_t__ colIdx; } ;
typedef TYPE_5__ tQueryInfo ;
typedef scalar_t__ int32_t ;
struct TYPE_12__ {TYPE_6__* pSchema; } ;
struct TYPE_11__ {TYPE_3__* pVal; } ;
typedef int SSyntaxTreeFilterSupporter ;
typedef TYPE_6__ SSchema ;


 scalar_t__ TSDB_MAX_TAGS ;
 scalar_t__ TSDB_MAX_TAGS_LEN ;
 scalar_t__ TSDB_TBNAME_COLUMN_INDEX ;
 int assert (int) ;
 TYPE_5__* calloc (int,int) ;
 int getFilterComparator (int ,int ,int ) ;
 int getTagColumnInfo (int *,TYPE_6__*,scalar_t__*,scalar_t__*) ;
 int tVariantAssign (int *,TYPE_3__*) ;
 int tVariantTypeSetType (int *,int ) ;

void filterPrepare(tSQLBinaryExpr* pExpr, void* param) {
  if (pExpr->info != ((void*)0)) {
    return;
  }

  int32_t i = 0, offset = 0;
  pExpr->info = calloc(1, sizeof(tQueryInfo));

  tQueryInfo* pInfo = pExpr->info;
  SSyntaxTreeFilterSupporter* pSupporter = (SSyntaxTreeFilterSupporter*)param;

  tVariant* pCond = pExpr->pRight->pVal;
  SSchema* pSchema = pExpr->pLeft->pSchema;

  getTagColumnInfo(pSupporter, pSchema, &i, &offset);
  assert((i >= 0 && i < TSDB_MAX_TAGS) || (i == TSDB_TBNAME_COLUMN_INDEX));
  assert((offset >= 0 && offset < TSDB_MAX_TAGS_LEN) || (offset == TSDB_TBNAME_COLUMN_INDEX));

  pInfo->sch = *pSchema;
  pInfo->colIdx = i;
  pInfo->optr = pExpr->nSQLBinaryOptr;
  pInfo->offset = offset;
  pInfo->compare = getFilterComparator(pSchema->type, pCond->nType, pInfo->optr);

  tVariantAssign(&pInfo->q, pCond);
  tVariantTypeSetType(&pInfo->q, pInfo->sch.type);
}
