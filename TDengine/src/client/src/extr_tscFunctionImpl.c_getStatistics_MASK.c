#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int TSDB_DATA_TYPE_BIGINT ; 
 int TSDB_DATA_TYPE_BINARY ; 
 int TSDB_DATA_TYPE_BOOL ; 
 int TSDB_DATA_TYPE_DOUBLE ; 
 int TSDB_DATA_TYPE_FLOAT ; 
 int TSDB_DATA_TYPE_INT ; 
 int TSDB_DATA_TYPE_NCHAR ; 
 int TSDB_DATA_TYPE_SMALLINT ; 
 int TSDB_DATA_TYPE_TIMESTAMP ; 
 int TSDB_DATA_TYPE_TINYINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (char*,int) ; 

void FUNC7(char *priData, char *data, int32_t size, int32_t numOfRow, int32_t type, int64_t *min, int64_t *max,
                   int64_t *sum, int16_t *minIndex, int16_t *maxIndex, int32_t *numOfNull) {
  int64_t *primaryKey = (int64_t *)priData;
  if (type == TSDB_DATA_TYPE_BINARY || type == TSDB_DATA_TYPE_NCHAR) {
    for (int32_t i = 0; i < numOfRow; ++i) {
      if (FUNC6(data + i * size, type)) {
        (*numOfNull) += 1;
        continue;
      }
    }
  } else {
    if (type == TSDB_DATA_TYPE_TINYINT || type == TSDB_DATA_TYPE_BOOL) {
      FUNC5(primaryKey, type, (int8_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_SMALLINT) {
      FUNC2(primaryKey, (int16_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_INT) {
      FUNC3(primaryKey, (int32_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_BIGINT || type == TSDB_DATA_TYPE_TIMESTAMP) {
      FUNC4(primaryKey, (int64_t *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_DOUBLE) {
      FUNC0(primaryKey, (double *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    } else if (type == TSDB_DATA_TYPE_FLOAT) {
      FUNC1(primaryKey, (float *)data, numOfRow, min, max, sum, minIndex, maxIndex, numOfNull);
    }
  }
}