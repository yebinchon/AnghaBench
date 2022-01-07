
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int z; } ;
struct TYPE_5__ {scalar_t__ nSQLOptr; int val; TYPE_1__ colInfo; } ;
typedef TYPE_2__ tSQLExpr ;
typedef int int32_t ;


 scalar_t__ TK_BOOL ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 int TSDB_CODE_SUCCESS ;
 int assert (int) ;
 int strncpy (char*,int ,int ) ;
 int tVariantToString (int *,char*) ;

__attribute__((used)) static int32_t tSQLExprNodeToString(tSQLExpr* pExpr, char** str) {
  if (pExpr->nSQLOptr == TK_ID) {
    strncpy(*str, pExpr->colInfo.z, pExpr->colInfo.n);
    *str += pExpr->colInfo.n;

  } else if (pExpr->nSQLOptr >= TK_BOOL && pExpr->nSQLOptr <= TK_STRING) {
    *str += tVariantToString(&pExpr->val, *str);

  } else {
    assert(0);
  }

  return TSDB_CODE_SUCCESS;
}
