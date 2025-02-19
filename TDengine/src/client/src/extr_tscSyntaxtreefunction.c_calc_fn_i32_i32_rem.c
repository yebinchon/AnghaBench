
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int nSize; } ;


 int MAX (scalar_t__,scalar_t__) ;
 size_t TSDB_DATA_TYPE_DOUBLE ;
 int TSDB_DATA_TYPE_INT ;
 scalar_t__ TSQL_SO_ASC ;
 scalar_t__ isNull (char*,int ) ;
 int setNull (char*,size_t,int ) ;
 TYPE_1__* tDataTypeDesc ;

void calc_fn_i32_i32_rem(void *left, void *right, int32_t numLeft, int32_t numRight, void *output, int32_t order) {
  int32_t *pLeft = (int32_t *)left;
  int32_t *pRight = (int32_t *)right;
  double * pOutput = (double *)output;

  int32_t i = (order == TSQL_SO_ASC) ? 0 : MAX(numLeft, numRight) - 1;
  int32_t step = (order == TSQL_SO_ASC) ? 1 : -1;

  if (numLeft == numRight) {
    for (; i >= 0 && i < numRight; i += step, pOutput += step) {
      if (isNull((char *)&(pLeft[i]), TSDB_DATA_TYPE_INT) || isNull((char *)&(pRight[i]), TSDB_DATA_TYPE_INT)) {
        setNull((char *)(pOutput), TSDB_DATA_TYPE_DOUBLE, tDataTypeDesc[TSDB_DATA_TYPE_DOUBLE].nSize);
        continue;
      }

      *pOutput = (double)pLeft[i] - ((int64_t)(((double)pLeft[i]) / pRight[i])) * pRight[i];
    }
  } else if (numLeft == 1) {
    for (; i >= 0 && i < numRight; i += step, pOutput += step) {
      if (isNull((char *)(pLeft), TSDB_DATA_TYPE_INT) || isNull((char *)&(pRight[i]), TSDB_DATA_TYPE_INT)) {
        setNull((char *)pOutput, TSDB_DATA_TYPE_DOUBLE, tDataTypeDesc[TSDB_DATA_TYPE_DOUBLE].nSize);
        continue;
      }

      *pOutput = (double)pLeft[0] - ((int64_t)(((double)pLeft[0]) / pRight[i])) * pRight[i];
    }
  } else if (numRight == 1) {
    for (; i >= 0 && i < numLeft; i += step, pOutput += step) {
      if (isNull((char *)&(pLeft[i]), TSDB_DATA_TYPE_INT) || isNull((char *)(pRight), TSDB_DATA_TYPE_INT)) {
        setNull((char *)pOutput, TSDB_DATA_TYPE_DOUBLE, tDataTypeDesc[TSDB_DATA_TYPE_DOUBLE].nSize);
        continue;
      }

      *pOutput = (double)pLeft[i] - ((int64_t)(((double)pLeft[i]) / pRight[0])) * pRight[0];
    }
  }
}
