
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_16__ {int cols; int data; int type; int meterId; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {scalar_t__ numOfTags; TYPE_2__* meterId; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;
typedef TYPE_3__ SMeterBatchUpdateMsg ;


 int SDB_TYPE_INSERT ;
 scalar_t__ TSDB_CODE_APP_ERROR ;
 scalar_t__ TSDB_CODE_INVALID_TABLE ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_MAX_TAGS ;
 int TSDB_METER_ID_LEN ;
 int mError (char*,int ,TYPE_2__*) ;
 int mTrace (char*,int ,TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int meterSdb ;
 scalar_t__ mgmtFindTagCol (TYPE_1__*,int ) ;
 int mgmtIsMetric (TYPE_1__*) ;
 scalar_t__ sdbBatchUpdateRow (int ,TYPE_3__*,int) ;
 scalar_t__ strcasecmp (int ,int ) ;
 int tfree (TYPE_3__*) ;

int32_t mgmtMeterAddTags(STabObj *pMetric, SSchema schema[], int ntags) {
  if (pMetric == ((void*)0) || (!mgmtIsMetric(pMetric))) return TSDB_CODE_INVALID_TABLE;

  if (pMetric->numOfTags + ntags > TSDB_MAX_TAGS) return TSDB_CODE_APP_ERROR;


  for (int i = 1; i < ntags; i++) {
    for (int j = 0; j < i; j++) {
      if (strcasecmp(schema[i].name, schema[j].name) == 0) {
        return TSDB_CODE_APP_ERROR;
      }
    }
  }

  for (int i = 0; i < ntags; i++) {
    if (mgmtFindTagCol(pMetric, schema[i].name) >= 0) {
      return TSDB_CODE_APP_ERROR;
    }
  }

  uint32_t size = sizeof(SMeterBatchUpdateMsg) + sizeof(SSchema) * ntags;
  SMeterBatchUpdateMsg *msg = (SMeterBatchUpdateMsg *)malloc(size);
  memset(msg, 0, size);

  memcpy(msg->meterId, pMetric->meterId, TSDB_METER_ID_LEN);
  msg->type = SDB_TYPE_INSERT;
  msg->cols = ntags;
  memcpy(msg->data, schema, sizeof(SSchema) * ntags);

  int32_t ret = sdbBatchUpdateRow(meterSdb, msg, size);
  tfree(msg);

  if (ret < 0) {
    mError("Failed to add tag column %s to table %s", schema[0].name, pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  mTrace("Succeed to add tag column %s to table %s", schema[0].name, pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}
