#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ numOfTags; scalar_t__ numOfColumns; int /*<<< orphan*/  meterId; scalar_t__ schema; } ;
typedef  TYPE_1__ STabObj ;
typedef  TYPE_2__ SSchema ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_APP_ERROR ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_COL_NAME_LEN ; 
 int TSDB_MAX_BYTES_PER_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  meterSdb ; 
 scalar_t__ FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int32_t FUNC12(STabObj *pMetric, uint32_t col, const char *nname) {
  int rowSize = 0;
  FUNC0(col >= 0);

  uint32_t len = FUNC9(nname);

  if (pMetric == NULL || (!FUNC6(pMetric)) || col >= pMetric->numOfTags || len >= TSDB_COL_NAME_LEN ||
      FUNC5(pMetric, nname) >= 0)
    return TSDB_CODE_APP_ERROR;

  // update
  SSchema *schema = (SSchema *)(pMetric->schema + (pMetric->numOfColumns + col) * sizeof(SSchema));
  FUNC10(schema->name, nname, TSDB_COL_NAME_LEN);

  // Encode string
  int   size = 1 + sizeof(STabObj) + TSDB_MAX_BYTES_PER_ROW;
  char *msg = (char *)FUNC3(size);
  if (msg == NULL) return TSDB_CODE_APP_ERROR;
  FUNC4(msg, 0, size);

  FUNC7(pMetric, msg, size, &rowSize);

  int32_t ret = FUNC8(meterSdb, msg, rowSize, 1);
  FUNC11(msg);

  if (ret < 0) {
    FUNC1("Failed to modify table %s tag column", pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  FUNC2("Succeed to modify table %s tag column", pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}