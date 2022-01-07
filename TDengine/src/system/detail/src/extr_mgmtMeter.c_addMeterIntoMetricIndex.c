
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ tSkipListKey ;
typedef size_t int16_t ;
struct TYPE_14__ {int bytes; int type; } ;
struct TYPE_13__ {int numOfColumns; int * pSkipList; scalar_t__ schema; } ;
typedef TYPE_2__ STabObj ;
typedef TYPE_3__ SSchema ;


 int MAX_SKIP_LIST_LEVEL ;
 int createKeyFromTagValue (TYPE_2__*,TYPE_2__*,TYPE_1__*) ;
 int * tSkipListCreate (int ,int ,int ) ;
 int tSkipListDestroyKey (TYPE_1__*) ;
 int tSkipListPut (int *,TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static void addMeterIntoMetricIndex(STabObj *pMetric, STabObj *pMeter) {
  const int16_t KEY_COLUMN_OF_TAGS = 0;
  SSchema * pTagSchema = (SSchema *)(pMetric->schema + pMetric->numOfColumns * sizeof(SSchema));

  if (pMetric->pSkipList == ((void*)0)) {
    pMetric->pSkipList = tSkipListCreate(MAX_SKIP_LIST_LEVEL, pTagSchema[KEY_COLUMN_OF_TAGS].type,
                    pTagSchema[KEY_COLUMN_OF_TAGS].bytes);
  }

  if (pMetric->pSkipList) {
    tSkipListKey key = {0};
    createKeyFromTagValue(pMetric, pMeter, &key);
    tSkipListPut(pMetric->pSkipList, pMeter, &key, 1);

    tSkipListDestroyKey(&key);
  }
}
