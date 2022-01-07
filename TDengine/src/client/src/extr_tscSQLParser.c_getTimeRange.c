
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nType; scalar_t__ nLen; int i64Key; int dKey; int pz; } ;
struct TYPE_5__ {scalar_t__ nSQLOptr; TYPE_3__ val; } ;
typedef TYPE_1__ tSQLExpr ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_6__ {scalar_t__ n; scalar_t__ type; int z; } ;
typedef TYPE_2__ SSQLToken ;


 int INT64_MAX ;
 scalar_t__ TK_EQ ;
 scalar_t__ TK_FLOAT ;
 scalar_t__ TK_GE ;
 scalar_t__ TK_GT ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_IN ;
 scalar_t__ TK_INTEGER ;
 scalar_t__ TK_LE ;
 scalar_t__ TK_LT ;
 scalar_t__ TK_SET ;
 scalar_t__ TK_STRING ;
 scalar_t__ TSDB_CODE_INVALID_SQL ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_DATA_TYPE_BIGINT ;
 scalar_t__ TSDB_DATA_TYPE_BINARY ;
 int TSDB_TIME_PRECISION_MICRO ;
 scalar_t__ TSDB_TIME_PRECISION_MILLI ;
 scalar_t__ strdequote (int ) ;
 char* strnchr (int ,char,scalar_t__,int) ;
 scalar_t__ tSQLGetToken (int ,scalar_t__*) ;
 int tVariantDump (TYPE_3__*,char*,int ) ;
 scalar_t__ taosParseTime (int ,int*,scalar_t__,int ) ;

int32_t getTimeRange(int64_t* stime, int64_t* etime, tSQLExpr* pRight, int32_t optr, int16_t timePrecision) {

  if (pRight->nSQLOptr == TK_ID) {
    return TSDB_CODE_SUCCESS;
  }





  if (pRight->nSQLOptr == TK_SET || optr == TK_IN) {
    return TSDB_CODE_INVALID_SQL;
  }

  int64_t val = 0;
  bool parsed = 0;
  if (pRight->val.nType == TSDB_DATA_TYPE_BINARY) {
    pRight->val.nLen = strdequote(pRight->val.pz);

    char* seg = strnchr(pRight->val.pz, '-', pRight->val.nLen, 0);
    if (seg != ((void*)0)) {
      if (taosParseTime(pRight->val.pz, &val, pRight->val.nLen, TSDB_TIME_PRECISION_MICRO) == TSDB_CODE_SUCCESS) {
        parsed = 1;
      } else {
        return TSDB_CODE_INVALID_SQL;
      }
    } else {
      SSQLToken token = {.z = pRight->val.pz, .n = pRight->val.nLen, .type = TK_ID};
      int32_t len = tSQLGetToken(pRight->val.pz, &token.type);

      if ((token.type != TK_INTEGER && token.type != TK_FLOAT) || len != pRight->val.nLen) {
        return TSDB_CODE_INVALID_SQL;
      }
    }
  } else if (pRight->nSQLOptr == TK_INTEGER && timePrecision == TSDB_TIME_PRECISION_MILLI) {






    if (pRight->val.i64Key <= INT64_MAX / 1000) {
      pRight->val.i64Key *= 1000;
    }
  } else if (pRight->nSQLOptr == TK_FLOAT && timePrecision == TSDB_TIME_PRECISION_MILLI) {
    pRight->val.dKey *= 1000;
  }

  if (!parsed) {




    tVariantDump(&pRight->val, (char*)&val, TSDB_DATA_TYPE_BIGINT);







    if (pRight->nSQLOptr == TK_STRING && timePrecision == TSDB_TIME_PRECISION_MILLI) {
      if (val <= INT64_MAX / 1000) {
        val *= 1000;
      }
    }
  }

  int32_t delta = 1;

  if (timePrecision == TSDB_TIME_PRECISION_MILLI) {
    delta *= 1000;
  }

  if (optr == TK_LE) {
    *etime = val;
  } else if (optr == TK_LT) {
    *etime = val - delta;
  } else if (optr == TK_GT) {
    *stime = val + delta;
  } else if (optr == TK_GE) {
    *stime = val;
  } else if (optr == TK_EQ) {
    *stime = val;
    *etime = *stime;
  }
  return TSDB_CODE_SUCCESS;
}
