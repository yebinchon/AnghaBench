
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_16__ {int numOfTimeSeries; } ;
struct TYPE_20__ {TYPE_2__ acctInfo; } ;
struct TYPE_15__ {int acct; } ;
struct TYPE_19__ {int name; TYPE_1__ cfg; } ;
struct TYPE_18__ {scalar_t__ colId; int name; } ;
struct TYPE_17__ {scalar_t__ meterType; int numOfColumns; int numOfTags; int numOfMeters; scalar_t__ sversion; scalar_t__ nextColId; struct TYPE_17__* next; struct TYPE_17__* pHead; scalar_t__ schemaSize; scalar_t__ schema; int meterId; } ;
typedef TYPE_3__ STabObj ;
typedef TYPE_4__ SSchema ;
typedef TYPE_5__ SDbObj ;
typedef TYPE_6__ SAcctObj ;


 int TSDB_CODE_APP_ERROR ;
 int TSDB_CODE_SUCCESS ;
 scalar_t__ TSDB_METER_METRIC ;
 scalar_t__ TSDB_METER_MTABLE ;
 scalar_t__ TSDB_METER_OTABLE ;
 scalar_t__ TSDB_METER_STABLE ;
 int mError (char*,int ) ;
 int memcpy (scalar_t__,TYPE_4__*,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int meterSdb ;
 scalar_t__ mgmtFindColumnIndex (TYPE_3__*,int ) ;
 TYPE_6__* mgmtGetAcct (int ) ;
 TYPE_5__* mgmtGetDbByMeterId (int ) ;
 scalar_t__ mgmtIsNormalMeter (TYPE_3__*) ;
 scalar_t__ realloc (scalar_t__,scalar_t__) ;
 int sdbUpdateRow (int ,TYPE_3__*,int ,int) ;

int32_t mgmtMeterAddColumn(STabObj *pMeter, SSchema schema[], int ncols) {
  SAcctObj *pAcct = ((void*)0);
  SDbObj * pDb = ((void*)0);

  if (pMeter == ((void*)0) || pMeter->meterType == TSDB_METER_MTABLE || pMeter->meterType == TSDB_METER_STABLE || ncols <= 0)
    return TSDB_CODE_APP_ERROR;


  for (int i = 0; i < ncols; i++)
    if (mgmtFindColumnIndex(pMeter, schema[i].name) > 0) return TSDB_CODE_APP_ERROR;

  pDb = mgmtGetDbByMeterId(pMeter->meterId);
  if (pDb == ((void*)0)) {
    mError("meter: %s not belongs to any database", pMeter->meterId);
    return TSDB_CODE_APP_ERROR;
  }

  pAcct = mgmtGetAcct(pDb->cfg.acct);
  if (pAcct == ((void*)0)) {
    mError("DB: %s not belongs to andy account", pDb->name);
    return TSDB_CODE_APP_ERROR;
  }

  pMeter->schema = realloc(pMeter->schema, pMeter->schemaSize + sizeof(SSchema) * ncols);

  if (pMeter->meterType == TSDB_METER_OTABLE) {
    memcpy(pMeter->schema + pMeter->schemaSize, schema, sizeof(SSchema) * ncols);
  } else if (pMeter->meterType == TSDB_METER_METRIC) {
    memmove(pMeter->schema + sizeof(SSchema) * (pMeter->numOfColumns + ncols),
            pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns, sizeof(SSchema) * pMeter->numOfTags);
    memcpy(pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns, schema, sizeof(SSchema) * ncols);
  }

  SSchema *tschema = (SSchema *)(pMeter->schema + sizeof(SSchema) * pMeter->numOfColumns);
  for (int i = 0; i < ncols; i++) tschema[i].colId = pMeter->nextColId++;

  pMeter->schemaSize += sizeof(SSchema) * ncols;
  pMeter->numOfColumns += ncols;
  pMeter->sversion++;
  if (mgmtIsNormalMeter(pMeter))
    pAcct->acctInfo.numOfTimeSeries += ncols;
  else
    pAcct->acctInfo.numOfTimeSeries += (ncols * pMeter->numOfMeters);
  sdbUpdateRow(meterSdb, pMeter, 0, 1);

  if (pMeter->meterType == TSDB_METER_METRIC) {
    for (STabObj *pObj = pMeter->pHead; pObj != ((void*)0); pObj = pObj->next) {
      pObj->numOfColumns++;
      pObj->nextColId = pMeter->nextColId;
      pObj->sversion = pMeter->sversion;
      sdbUpdateRow(meterSdb, pObj, 0, 1);
    }
  }

  return TSDB_CODE_SUCCESS;
}
