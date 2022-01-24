#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ numOfCols; TYPE_1__* pFields; } ;
typedef  TYPE_2__ tColModel ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int int16_t ;
struct TYPE_5__ {int type; int /*<<< orphan*/  bytes; } ;
typedef  int /*<<< orphan*/  SSrcColumnInfo ;

/* Variables and functions */
 char* FUNC0 (char*,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
#define  TSDB_DATA_TYPE_BIGINT 137 
#define  TSDB_DATA_TYPE_BINARY 136 
#define  TSDB_DATA_TYPE_BOOL 135 
#define  TSDB_DATA_TYPE_DOUBLE 134 
#define  TSDB_DATA_TYPE_FLOAT 133 
#define  TSDB_DATA_TYPE_INT 132 
#define  TSDB_DATA_TYPE_NCHAR 131 
#define  TSDB_DATA_TYPE_SMALLINT 130 
#define  TSDB_DATA_TYPE_TIMESTAMP 129 
#define  TSDB_DATA_TYPE_TINYINT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

void FUNC5(tColModel *pModel, void *pData, int32_t numOfRows, int32_t totalCapacity,
                        SSrcColumnInfo *param) {
  for (int32_t i = 0; i < numOfRows; ++i) {
    for (int32_t j = 0; j < pModel->numOfCols; ++j) {
      char *val = FUNC0((char *)pData, pModel, totalCapacity, i, j);

      FUNC3("type:%d\t", pModel->pFields[j].type);

      switch (pModel->pFields[j].type) {
        case TSDB_DATA_TYPE_BIGINT:
          FUNC3("%lld\t", *(int64_t *)val);
          break;
        case TSDB_DATA_TYPE_INT:
          FUNC3("%d\t", *(int32_t *)val);
          break;
        case TSDB_DATA_TYPE_NCHAR: {
          char buf[128] = {0};
          FUNC4(val, pModel->pFields[j].bytes, buf);
          FUNC3("%s\t", buf);
        }
        case TSDB_DATA_TYPE_BINARY: {
          FUNC2(val, pModel->pFields[j].bytes, &param[j]);
          break;
        }
        case TSDB_DATA_TYPE_DOUBLE:
          FUNC3("%lf\t", *(double *)val);
          break;
        case TSDB_DATA_TYPE_TIMESTAMP:
          FUNC3("%lld\t", *(int64_t *)val);
          break;
        case TSDB_DATA_TYPE_TINYINT:
          FUNC3("%d\t", *(int8_t *)val);
          break;
        case TSDB_DATA_TYPE_SMALLINT:
          FUNC3("%d\t", *(int16_t *)val);
          break;
        case TSDB_DATA_TYPE_BOOL:
          FUNC3("%d\t", *(int8_t *)val);
          break;
        case TSDB_DATA_TYPE_FLOAT:
          FUNC3("%f\t", *(float *)val);
          break;
        default:
          FUNC1(false);
      }
    }
    FUNC3("\n");
  }
  FUNC3("\n");
}