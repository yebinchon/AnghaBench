
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int n; int z; int type; } ;
struct TYPE_10__ {void* nType; int i64Key; } ;
struct TYPE_8__ {void* nSQLOptr; TYPE_2__ colInfo; TYPE_3__ val; } ;
typedef TYPE_1__ tSQLExpr ;
typedef scalar_t__ int32_t ;
typedef TYPE_2__ SSQLToken ;


 scalar_t__ TK_ALL ;
 scalar_t__ TK_BOOL ;
 scalar_t__ TK_FLOAT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_INTEGER ;
 scalar_t__ TK_NOW ;
 scalar_t__ TK_STRING ;
 void* TK_TIMESTAMP ;
 scalar_t__ TK_VARIABLE ;
 void* TSDB_DATA_TYPE_BIGINT ;
 int TSDB_TIME_PRECISION_MICRO ;
 int UNUSED (scalar_t__) ;
 int assert (int) ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ getTimestampInUsFromStr (int ,int ,int *) ;
 int tVariantCreate (TYPE_3__*,TYPE_2__*) ;
 int taosGetTimestamp (int ) ;
 int toTSDBType (int ) ;

tSQLExpr *tSQLExprIdValueCreate(SSQLToken *pAliasToken, int32_t optrType) {
  tSQLExpr *nodePtr = calloc(1, sizeof(tSQLExpr));

  if (optrType == TK_INTEGER || optrType == TK_STRING || optrType == TK_FLOAT || optrType == TK_BOOL) {
    toTSDBType(pAliasToken->type);

    tVariantCreate(&nodePtr->val, pAliasToken);
    nodePtr->nSQLOptr = optrType;
  } else if (optrType == TK_NOW) {

    nodePtr->val.i64Key = taosGetTimestamp(TSDB_TIME_PRECISION_MICRO);
    nodePtr->val.nType = TSDB_DATA_TYPE_BIGINT;
    nodePtr->nSQLOptr = TK_TIMESTAMP;
  } else if (optrType == TK_VARIABLE) {
    int32_t ret = getTimestampInUsFromStr(pAliasToken->z, pAliasToken->n, &nodePtr->val.i64Key);
    UNUSED(ret);

    nodePtr->val.nType = TSDB_DATA_TYPE_BIGINT;
    nodePtr->nSQLOptr = TK_TIMESTAMP;
  } else {
    assert(optrType == TK_ID || optrType == TK_ALL);
    if (pAliasToken != ((void*)0)) {
      nodePtr->colInfo = *pAliasToken;
    }

    nodePtr->nSQLOptr = optrType;
  }
  return nodePtr;
}
