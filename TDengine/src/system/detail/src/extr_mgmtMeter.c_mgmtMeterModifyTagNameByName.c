
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {int meterId; } ;
typedef TYPE_1__ STabObj ;


 int TSDB_CODE_APP_ERROR ;
 int TSDB_CODE_INVALID_MSG_TYPE ;
 int mError (char*,int ,char const*,char const*) ;
 int mgmtFindTagCol (TYPE_1__*,char const*) ;
 int mgmtIsMetric (TYPE_1__*) ;
 int mgmtMeterModifyTagNameByCol (TYPE_1__*,int,char const*) ;

int32_t mgmtMeterModifyTagNameByName(STabObj *pMetric, const char *oname, const char *nname) {
  if (pMetric == ((void*)0) || (!mgmtIsMetric(pMetric))) return TSDB_CODE_APP_ERROR;

  int index = mgmtFindTagCol(pMetric, oname);
  if (index < 0) {

    mError("Failed to modify table %s tag column, oname: %s, nname: %s", pMetric->meterId, oname, nname);
    return TSDB_CODE_INVALID_MSG_TYPE;
  }

  return mgmtMeterModifyTagNameByCol(pMetric, index, nname);
}
