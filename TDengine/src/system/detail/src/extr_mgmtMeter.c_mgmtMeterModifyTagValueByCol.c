
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_13__ {int bytes; } ;
struct TYPE_12__ {int numOfTags; int numOfColumns; int isDirty; int meterId; scalar_t__ pTagData; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 scalar_t__ TSDB_CODE_APP_ERROR ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 int TSDB_MAX_BYTES_PER_ROW ;
 scalar_t__ TSDB_METER_ID_LEN ;
 int addMeterIntoMetricIndex (TYPE_1__*,TYPE_1__*) ;
 int assert (int ) ;
 int mError (char*,...) ;
 int mTrace (char*,int,int ) ;
 scalar_t__ malloc (int) ;
 int memcpy (scalar_t__,char const*,int ) ;
 int memset (char*,int ,int) ;
 int meterSdb ;
 TYPE_1__* mgmtGetMeter (scalar_t__) ;
 scalar_t__ mgmtGetTagsLength (TYPE_1__*,int) ;
 int mgmtMeterActionEncode (TYPE_1__*,char*,int,int*) ;
 int mgmtMeterCreateFromMetric (TYPE_1__*) ;
 int removeMeterFromMetricIndex (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ sdbUpdateRow (int ,char*,int,int) ;
 int tfree (char*) ;

int32_t mgmtMeterModifyTagValueByCol(STabObj *pMeter, int col, const char *nContent) {
  int rowSize = 0;
  if (pMeter == ((void*)0) || nContent == ((void*)0) || (!mgmtMeterCreateFromMetric(pMeter))) return TSDB_CODE_APP_ERROR;

  STabObj *pMetric = mgmtGetMeter(pMeter->pTagData);
  assert(pMetric != ((void*)0));

  if (col < 0 || col > pMetric->numOfTags) return TSDB_CODE_APP_ERROR;

  SSchema *schema = (SSchema *)(pMetric->schema + (pMetric->numOfColumns + col) * sizeof(SSchema));

  if (col == 0) {
    pMeter->isDirty = 1;
    removeMeterFromMetricIndex(pMetric, pMeter);
  }
  memcpy(pMeter->pTagData + mgmtGetTagsLength(pMetric, col) + TSDB_METER_ID_LEN, nContent, schema->bytes);
  if (col == 0) {
    addMeterIntoMetricIndex(pMetric, pMeter);
  }


  int size = sizeof(STabObj) + TSDB_MAX_BYTES_PER_ROW + 1;
  char *msg = (char *)malloc(size);
  if (msg == ((void*)0)) {
    mError("failed to allocate message memory while modify tag value");
    return TSDB_CODE_APP_ERROR;
  }
  memset(msg, 0, size);

  mgmtMeterActionEncode(pMeter, msg, size, &rowSize);

  int32_t ret = sdbUpdateRow(meterSdb, msg, rowSize, 1);
  tfree(msg);

  if (pMeter->isDirty) pMeter->isDirty = 0;

  if (ret < 0) {
    mError("Failed to modify tag column %d of table %s", col, pMeter->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  mTrace("Succeed to modify tag column %d of table %s", col, pMeter->meterId);
  return TSDB_CODE_SUCCESS;
}
