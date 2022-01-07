
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_7__ {int pTagData; } ;
typedef TYPE_1__ STabObj ;


 int TSDB_CODE_APP_ERROR ;
 int TSDB_CODE_INVALID_MSG_TYPE ;
 int mgmtFindTagCol (TYPE_1__*,char*) ;
 TYPE_1__* mgmtGetMeter (int ) ;
 int mgmtMeterCreateFromMetric (TYPE_1__*) ;
 int mgmtMeterModifyTagValueByCol (TYPE_1__*,int,char*) ;

int32_t mgmtMeterModifyTagValueByName(STabObj *pMeter, char *tagName, char *nContent) {
  if (pMeter == ((void*)0) || tagName == ((void*)0) || nContent == ((void*)0) || (!mgmtMeterCreateFromMetric(pMeter)))
    return TSDB_CODE_INVALID_MSG_TYPE;

  STabObj *pMetric = mgmtGetMeter(pMeter->pTagData);
  if (pMetric == ((void*)0)) return TSDB_CODE_APP_ERROR;

  int col = mgmtFindTagCol(pMetric, tagName);
  if (col < 0) return TSDB_CODE_APP_ERROR;

  return mgmtMeterModifyTagValueByCol(pMeter, col, nContent);
}
