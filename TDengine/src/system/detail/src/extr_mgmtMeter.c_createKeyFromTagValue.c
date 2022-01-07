
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSkipListKey ;
typedef size_t int16_t ;
struct TYPE_6__ {int bytes; int type; } ;
struct TYPE_5__ {int numOfColumns; char* pTagData; scalar_t__ schema; } ;
typedef TYPE_1__ STabObj ;
typedef TYPE_2__ SSchema ;


 int TSDB_METER_ID_LEN ;
 int tSkipListCreateKey (int ,char*,int ) ;

__attribute__((used)) static void createKeyFromTagValue(STabObj *pMetric, STabObj *pMeter, tSkipListKey *pKey) {
  SSchema * pTagSchema = (SSchema *)(pMetric->schema + pMetric->numOfColumns * sizeof(SSchema));
  const int16_t KEY_COLUMN_OF_TAGS = 0;

  char *tagVal = pMeter->pTagData + TSDB_METER_ID_LEN;
  *pKey = tSkipListCreateKey(pTagSchema[KEY_COLUMN_OF_TAGS].type, tagVal, pTagSchema[KEY_COLUMN_OF_TAGS].bytes);
}
