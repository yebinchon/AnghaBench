
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_20__ {scalar_t__ type; TYPE_10__* schema; int tagVal; int meterId; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_18__ {int meterId; } ;
struct TYPE_17__ {int name; int type; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SDbObj ;
typedef TYPE_3__ SAlterTableMsg ;


 scalar_t__ TSDB_ALTER_TABLE_ADD_COLUMN ;
 scalar_t__ TSDB_ALTER_TABLE_ADD_TAG_COLUMN ;
 scalar_t__ TSDB_ALTER_TABLE_CHANGE_TAG_COLUMN ;
 scalar_t__ TSDB_ALTER_TABLE_DROP_COLUMN ;
 scalar_t__ TSDB_ALTER_TABLE_DROP_TAG_COLUMN ;
 scalar_t__ TSDB_ALTER_TABLE_UPDATE_TAG_VAL ;
 int TSDB_CODE_INVALID_MSG_TYPE ;
 int TSDB_CODE_INVALID_TABLE ;
 int TSDB_CODE_MONITOR_DB_FORBEIDDEN ;
 int TSDB_CODE_OPS_NOT_SUPPORT ;
 int TSDB_CODE_SUCCESS ;
 int mTrace (char*,int ,int ,...) ;
 scalar_t__ mgmtCheckIsMonitorDB (int ,int ) ;
 TYPE_1__* mgmtGetMeter (int ) ;
 int mgmtIsNormalMeter (TYPE_1__*) ;
 int mgmtMeterAddColumn (TYPE_1__*,TYPE_10__*,int) ;
 int mgmtMeterAddTags (TYPE_1__*,TYPE_10__*,int) ;
 int mgmtMeterCreateFromMetric (TYPE_1__*) ;
 int mgmtMeterDropColumnByName (TYPE_1__*,int ) ;
 int mgmtMeterDropTagByName (TYPE_1__*,int ) ;
 int mgmtMeterModifyTagNameByName (TYPE_1__*,int ,int ) ;
 int mgmtMeterModifyTagValueByName (TYPE_1__*,int ,int ) ;
 int tsMonitorDbName ;

int mgmtAlterMeter(SDbObj *pDb, SAlterTableMsg *pAlter) {
  STabObj *pMeter;

  pMeter = mgmtGetMeter(pAlter->meterId);
  if (pMeter == ((void*)0)) {
    return TSDB_CODE_INVALID_TABLE;
  }


  if (mgmtCheckIsMonitorDB(pDb->name, tsMonitorDbName)) return TSDB_CODE_MONITOR_DB_FORBEIDDEN;

  if (pAlter->type == TSDB_ALTER_TABLE_UPDATE_TAG_VAL) {
    if (!mgmtIsNormalMeter(pMeter) || !mgmtMeterCreateFromMetric(pMeter)) {
      return TSDB_CODE_OPS_NOT_SUPPORT;
    }
  }



  if (pAlter->type == TSDB_ALTER_TABLE_ADD_TAG_COLUMN) {
    mTrace("alter table %s to add tag column:%s, type:%d", pMeter->meterId, pAlter->schema[0].name,
           pAlter->schema[0].type);
    return mgmtMeterAddTags(pMeter, pAlter->schema, 1);
  } else if (pAlter->type == TSDB_ALTER_TABLE_DROP_TAG_COLUMN) {
    mTrace("alter table %s to drop tag column:%s", pMeter->meterId, pAlter->schema[0].name);
    return mgmtMeterDropTagByName(pMeter, pAlter->schema[0].name);
  } else if (pAlter->type == TSDB_ALTER_TABLE_CHANGE_TAG_COLUMN) {
    mTrace("alter table %s to change tag column name, old: %s, new: %s", pMeter->meterId, pAlter->schema[0].name,
           pAlter->schema[1].name);
    return mgmtMeterModifyTagNameByName(pMeter, pAlter->schema[0].name, pAlter->schema[1].name);
  } else if (pAlter->type == TSDB_ALTER_TABLE_UPDATE_TAG_VAL) {
    mTrace("alter table %s to modify tag value, tag name:%s", pMeter->meterId, pAlter->schema[0].name);
    return mgmtMeterModifyTagValueByName(pMeter, pAlter->schema[0].name, pAlter->tagVal);
  } else if (pAlter->type == TSDB_ALTER_TABLE_ADD_COLUMN) {
    mTrace("alter table %s to add column:%s, type:%d", pMeter->meterId, pAlter->schema[0].name, pAlter->schema[0].type);
    return mgmtMeterAddColumn(pMeter, pAlter->schema, 1);
  } else if (pAlter->type == TSDB_ALTER_TABLE_DROP_COLUMN) {
    mTrace("alter table %s to drop column:%s", pMeter->meterId, pAlter->schema[0].name);
    return mgmtMeterDropColumnByName(pMeter, pAlter->schema[0].name);
  } else {
    return TSDB_CODE_INVALID_MSG_TYPE;
  }

  return TSDB_CODE_SUCCESS;
}
