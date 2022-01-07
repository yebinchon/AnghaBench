
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int meterId; } ;
typedef TYPE_1__ STabObj ;


 int TSDB_CODE_INVALID_TABLE ;
 int mTrace (char*,char*,int ) ;
 int mgmtFindTagCol (TYPE_1__*,char*) ;
 int mgmtIsMetric (TYPE_1__*) ;
 int mgmtMeterDropTagByCol (TYPE_1__*,int) ;

int32_t mgmtMeterDropTagByName(STabObj *pMetric, char *name) {
  if (pMetric == ((void*)0) || (!mgmtIsMetric(pMetric))) {
    mTrace("Failed to drop tag name: %s from table: %s", name, pMetric->meterId);
    return TSDB_CODE_INVALID_TABLE;
  }

  int col = mgmtFindTagCol(pMetric, name);

  return mgmtMeterDropTagByCol(pMetric, col);
}
