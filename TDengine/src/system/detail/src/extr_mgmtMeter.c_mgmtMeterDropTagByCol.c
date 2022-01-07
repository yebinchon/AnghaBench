
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_12__ {int cols; scalar_t__ data; int type; int meterId; } ;
struct TYPE_11__ {int numOfTags; int numOfColumns; int meterId; scalar_t__ schema; } ;
struct TYPE_10__ {int col; int schema; scalar_t__ pos; } ;
typedef TYPE_1__ SchemaUnit ;
typedef TYPE_2__ STabObj ;
typedef int SSchema ;
typedef TYPE_3__ SMeterBatchUpdateMsg ;


 int SDB_TYPE_DELETE ;
 scalar_t__ TSDB_CODE_APP_ERROR ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_METER_ID_LEN ;
 int mError (char*,int,int ) ;
 int mTrace (char*,int,int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 int meterSdb ;
 scalar_t__ mgmtGetTagsLength (TYPE_2__*,int) ;
 int mgmtIsMetric (TYPE_2__*) ;
 scalar_t__ sdbBatchUpdateRow (int ,TYPE_3__*,int) ;
 int tfree (TYPE_3__*) ;

int32_t mgmtMeterDropTagByCol(STabObj *pMetric, int col) {
  if (pMetric == ((void*)0) || (!mgmtIsMetric(pMetric)) || col <= 0 || col >= pMetric->numOfTags) return TSDB_CODE_APP_ERROR;


  uint32_t size = sizeof(SMeterBatchUpdateMsg) + sizeof(SchemaUnit);
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)malloc(size);
  memset(msg, 0, size);

  memcpy(msg->meterId, pMetric->meterId, TSDB_METER_ID_LEN);
  msg->type = SDB_TYPE_DELETE;
  msg->cols = 1;

  ((SchemaUnit *)(msg->data))->col = col;
  ((SchemaUnit *)(msg->data))->pos = mgmtGetTagsLength(pMetric, col) + TSDB_METER_ID_LEN;
  ((SchemaUnit *)(msg->data))->schema = *(SSchema *)(pMetric->schema + sizeof(SSchema) * (pMetric->numOfColumns + col));

  int32_t ret = sdbBatchUpdateRow(meterSdb, msg, size);
  tfree(msg);

  if (ret < 0) {
    mError("Failed to drop tag column: %d from table: %s", col, pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  mTrace("Succeed to drop tag column: %d from table: %s", col, pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}
