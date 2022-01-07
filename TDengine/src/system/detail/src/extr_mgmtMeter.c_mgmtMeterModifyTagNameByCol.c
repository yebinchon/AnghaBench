
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {scalar_t__ numOfTags; scalar_t__ numOfColumns; int meterId; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 scalar_t__ TSDB_CODE_APP_ERROR ;
 scalar_t__ TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_COL_NAME_LEN ;
 int TSDB_MAX_BYTES_PER_ROW ;
 int assert (int) ;
 int mError (char*,int ) ;
 int mTrace (char*,int ) ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 int meterSdb ;
 scalar_t__ mgmtFindTagCol (TYPE_1__*,char const*) ;
 int mgmtIsMetric (TYPE_1__*) ;
 int mgmtMeterActionEncode (TYPE_1__*,char*,int,int*) ;
 scalar_t__ sdbUpdateRow (int ,char*,int,int) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (int ,char const*,scalar_t__) ;
 int tfree (char*) ;

int32_t mgmtMeterModifyTagNameByCol(STabObj *pMetric, uint32_t col, const char *nname) {
  int rowSize = 0;
  assert(col >= 0);

  uint32_t len = strlen(nname);

  if (pMetric == ((void*)0) || (!mgmtIsMetric(pMetric)) || col >= pMetric->numOfTags || len >= TSDB_COL_NAME_LEN ||
      mgmtFindTagCol(pMetric, nname) >= 0)
    return TSDB_CODE_APP_ERROR;


  SSchema *schema = (SSchema *)(pMetric->schema + (pMetric->numOfColumns + col) * sizeof(SSchema));
  strncpy(schema->name, nname, TSDB_COL_NAME_LEN);


  int size = 1 + sizeof(STabObj) + TSDB_MAX_BYTES_PER_ROW;
  char *msg = (char *)malloc(size);
  if (msg == ((void*)0)) return TSDB_CODE_APP_ERROR;
  memset(msg, 0, size);

  mgmtMeterActionEncode(pMetric, msg, size, &rowSize);

  int32_t ret = sdbUpdateRow(meterSdb, msg, rowSize, 1);
  tfree(msg);

  if (ret < 0) {
    mError("Failed to modify table %s tag column", pMetric->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  mTrace("Succeed to modify table %s tag column", pMetric->meterId);
  return TSDB_CODE_SUCCESS;
}
