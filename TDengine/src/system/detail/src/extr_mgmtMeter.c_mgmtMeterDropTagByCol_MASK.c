#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {int cols; scalar_t__ data; int /*<<< orphan*/  type; int /*<<< orphan*/  meterId; } ;
struct TYPE_11__ {int numOfTags; int numOfColumns; int /*<<< orphan*/  meterId; scalar_t__ schema; } ;
struct TYPE_10__ {int col; int /*<<< orphan*/  schema; scalar_t__ pos; } ;
typedef  TYPE_1__ SchemaUnit ;
typedef  TYPE_2__ STabObj ;
typedef  int /*<<< orphan*/  SSchema ;
typedef  TYPE_3__ SMeterBatchUpdateMsg ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_TYPE_DELETE ; 
 scalar_t__ TSDB_CODE_APP_ERROR ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  meterSdb ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

int32_t FUNC9(STabObj *pMetric, int col) {
  if (pMetric == NULL || (!FUNC6(pMetric)) || col <= 0 || col >= pMetric->numOfTags) return TSDB_CODE_APP_ERROR;

  // Pack message to do batch update
  uint32_t              size = sizeof(SMeterBatchUpdateMsg) + sizeof(SchemaUnit);
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)FUNC2(size);
  FUNC4(msg, 0, size);

  FUNC3(msg->meterId, pMetric->meterId, TSDB_METER_ID_LEN);
  msg->type = SDB_TYPE_DELETE;  // TODO: what should here be ?
  msg->cols = 1;

  ((SchemaUnit *)(msg->data))->col = col;
  ((SchemaUnit *)(msg->data))->pos = FUNC5(pMetric, col) + TSDB_METER_ID_LEN;
  ((SchemaUnit *)(msg->data))->schema = *(SSchema *)(pMetric->schema + sizeof(SSchema) * (pMetric->numOfColumns + col));

  int32_t ret = FUNC7(meterSdb, msg, size);
  FUNC8(msg);

  if (ret < 0) {
    FUNC0("Failed to drop tag column: %d from table: %s", col, pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  FUNC1("Succeed to drop tag column: %d from table: %s", col, pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}