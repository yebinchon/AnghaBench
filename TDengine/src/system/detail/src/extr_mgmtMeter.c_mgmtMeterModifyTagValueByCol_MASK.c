#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  bytes; } ;
struct TYPE_12__ {int numOfTags; int numOfColumns; int isDirty; int /*<<< orphan*/  meterId; scalar_t__ pTagData; scalar_t__ schema; } ;
typedef  TYPE_1__ STabObj ;
typedef  TYPE_2__ SSchema ;

/* Variables and functions */
 scalar_t__ TSDB_CODE_APP_ERROR ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int TSDB_MAX_BYTES_PER_ROW ; 
 scalar_t__ TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  meterSdb ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int32_t FUNC14(STabObj *pMeter, int col, const char *nContent) {
  int rowSize = 0;
  if (pMeter == NULL || nContent == NULL || (!FUNC10(pMeter))) return TSDB_CODE_APP_ERROR;

  STabObj *pMetric = FUNC7(pMeter->pTagData);
  FUNC1(pMetric != NULL);

  if (col < 0 || col > pMetric->numOfTags) return TSDB_CODE_APP_ERROR;

  SSchema *schema = (SSchema *)(pMetric->schema + (pMetric->numOfColumns + col) * sizeof(SSchema));

  if (col == 0) {
    pMeter->isDirty = 1;
    FUNC11(pMetric, pMeter);
  }
  FUNC5(pMeter->pTagData + FUNC8(pMetric, col) + TSDB_METER_ID_LEN, nContent, schema->bytes);
  if (col == 0) {
    FUNC0(pMetric, pMeter);
  }

  // Encode the string
  int   size = sizeof(STabObj) + TSDB_MAX_BYTES_PER_ROW + 1;
  char *msg = (char *)FUNC4(size);
  if (msg == NULL) {
    FUNC2("failed to allocate message memory while modify tag value");
    return TSDB_CODE_APP_ERROR;
  }
  FUNC6(msg, 0, size);

  FUNC9(pMeter, msg, size, &rowSize);

  int32_t ret = FUNC12(meterSdb, msg, rowSize, 1);  // Need callback function
  FUNC13(msg);

  if (pMeter->isDirty) pMeter->isDirty = 0;

  if (ret < 0) {
    FUNC2("Failed to modify tag column %d of table %s", col, pMeter->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  FUNC3("Succeed to modify tag column %d of table %s", col, pMeter->meterId);
  return TSDB_CODE_SUCCESS;
}