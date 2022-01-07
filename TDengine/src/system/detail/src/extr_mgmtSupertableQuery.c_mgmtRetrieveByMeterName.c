
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int num; TYPE_2__** pRes; } ;
typedef TYPE_1__ tQueryResultset ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ meterType; char* pTagData; scalar_t__ uid; int meterId; } ;
typedef TYPE_2__ STabObj ;


 int TSDB_METER_ID_LEN ;
 scalar_t__ TSDB_METER_MTABLE ;
 int mWarn (char*,int ,char*) ;
 TYPE_2__** malloc (int) ;
 TYPE_2__* mgmtGetMeter (char*) ;
 TYPE_2__** realloc (TYPE_2__**,int) ;
 scalar_t__ strncasecmp (int ,int ,int ) ;
 char* strsep (char**,char const*) ;

__attribute__((used)) static void mgmtRetrieveByMeterName(tQueryResultset* pRes, char* str, STabObj* pMetric) {
  const char* sep = ",";
  char* pToken = ((void*)0);

  int32_t s = 4;

  pRes->pRes = malloc(sizeof(char*) * s);
  pRes->num = 0;

  for (pToken = strsep(&str, sep); pToken != ((void*)0); pToken = strsep(&str, sep)) {
    STabObj* pMeterObj = mgmtGetMeter(pToken);
    if (pMeterObj == ((void*)0)) {
      mWarn("metric:%s error in metric query expression, invalid meter id:%s", pMetric->meterId, pToken);
      continue;
    }

    if (pRes->num >= s) {
      s += (s >> 1);
      pRes->pRes = realloc(pRes->pRes, sizeof(char*) * s);
    }


    if (pMeterObj->meterType != TSDB_METER_MTABLE) {
      continue;
    }





    STabObj* parentMetric = mgmtGetMeter(pMeterObj->pTagData);
    if (strncasecmp(parentMetric->meterId, pMetric->meterId, TSDB_METER_ID_LEN) != 0 ||
        (parentMetric->uid != pMetric->uid)) {
      continue;
    }

    pRes->pRes[pRes->num++] = pMeterObj;
  }
}
