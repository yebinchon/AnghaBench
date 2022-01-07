
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t nExpr; TYPE_1__* a; } ;
typedef TYPE_3__ tSQLExprList ;
struct TYPE_7__ {size_t nLen; int pz; } ;
struct TYPE_9__ {TYPE_2__ val; TYPE_3__* pParam; } ;
typedef TYPE_4__ tSQLExpr ;
typedef size_t int32_t ;
struct TYPE_6__ {TYPE_4__* pNode; } ;


 int QUERY_COND_REL_PREFIX_IN ;
 int QUERY_COND_REL_PREFIX_IN_LEN ;
 char* TBNAME_LIST_SEP ;
 size_t TSDB_CODE_INVALID_SQL ;
 size_t TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_METER_NAME_LEN ;
 int strcpy (char*,int ) ;
 int strncpy (char*,int ,size_t) ;

__attribute__((used)) static int32_t tablenameListToString(tSQLExpr* pExpr, char* str) {
  tSQLExprList* pList = pExpr->pParam;
  if (pList->nExpr <= 0) {
    return TSDB_CODE_INVALID_SQL;
  }

  if (pList->nExpr > 0) {
    strcpy(str, QUERY_COND_REL_PREFIX_IN);
    str += QUERY_COND_REL_PREFIX_IN_LEN;
  }

  int32_t len = 0;
  for (int32_t i = 0; i < pList->nExpr; ++i) {
    tSQLExpr* pSub = pList->a[i].pNode;
    strncpy(str + len, pSub->val.pz, pSub->val.nLen);

    len += pSub->val.nLen;

    if (i < pList->nExpr - 1) {
      str[len++] = TBNAME_LIST_SEP[0];
    }

    if (pSub->val.nLen <= 0 || pSub->val.nLen > TSDB_METER_NAME_LEN) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}
