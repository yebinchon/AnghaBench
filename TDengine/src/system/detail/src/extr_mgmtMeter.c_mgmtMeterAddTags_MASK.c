#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_16__ {int cols; int /*<<< orphan*/  data; int /*<<< orphan*/  type; int /*<<< orphan*/  meterId; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {scalar_t__ numOfTags; TYPE_2__* meterId; } ;
typedef  TYPE_1__ STabObj ;
typedef  TYPE_2__ SSchema ;
typedef  TYPE_3__ SMeterBatchUpdateMsg ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_TYPE_INSERT ; 
 scalar_t__ TSDB_CODE_APP_ERROR ; 
 scalar_t__ TSDB_CODE_INVALID_TABLE ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 scalar_t__ TSDB_MAX_TAGS ; 
 int TSDB_METER_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  meterSdb ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

int32_t FUNC10(STabObj *pMetric, SSchema schema[], int ntags) {
  if (pMetric == NULL || (!FUNC6(pMetric))) return TSDB_CODE_INVALID_TABLE;

  if (pMetric->numOfTags + ntags > TSDB_MAX_TAGS) return TSDB_CODE_APP_ERROR;

  // check if schemas have the same name
  for (int i = 1; i < ntags; i++) {
    for (int j = 0; j < i; j++) {
      if (FUNC8(schema[i].name, schema[j].name) == 0) {
        return TSDB_CODE_APP_ERROR;
      }
    }
  }

  for (int i = 0; i < ntags; i++) {
    if (FUNC5(pMetric, schema[i].name) >= 0) {
      return TSDB_CODE_APP_ERROR;
    }
  }

  uint32_t              size = sizeof(SMeterBatchUpdateMsg) + sizeof(SSchema) * ntags;
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)FUNC2(size);
  FUNC4(msg, 0, size);

  FUNC3(msg->meterId, pMetric->meterId, TSDB_METER_ID_LEN);
  msg->type = SDB_TYPE_INSERT;
  msg->cols = ntags;
  FUNC3(msg->data, schema, sizeof(SSchema) * ntags);

  int32_t ret = FUNC7(meterSdb, msg, size);
  FUNC9(msg);

  if (ret < 0) {
    FUNC0("Failed to add tag column %s to table %s", schema[0].name, pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  FUNC1("Succeed to add tag column %s to table %s", schema[0].name, pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}