
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ pData; } ;
typedef TYPE_2__ tSkipListNode ;
struct TYPE_17__ {int member_0; } ;
typedef TYPE_3__ tSkipListKey ;
typedef size_t int32_t ;
struct TYPE_15__ {scalar_t__ sid; scalar_t__ vgId; } ;
struct TYPE_18__ {int * pSkipList; TYPE_1__ gid; } ;
typedef TYPE_4__ STabObj ;


 int assert (int) ;
 int createKeyFromTagValue (TYPE_4__*,TYPE_4__*,TYPE_3__*) ;
 int free (TYPE_2__**) ;
 int tSkipListDestroyKey (TYPE_3__*) ;
 size_t tSkipListGets (int *,TYPE_3__*,TYPE_2__***) ;
 int tSkipListRemoveNode (int *,TYPE_2__*) ;

__attribute__((used)) static void removeMeterFromMetricIndex(STabObj *pMetric, STabObj *pMeter) {
  if (pMetric->pSkipList == ((void*)0)) {
    return;
  }

  tSkipListKey key = {0};
  createKeyFromTagValue(pMetric, pMeter, &key);
  tSkipListNode **pRes = ((void*)0);

  int32_t num = tSkipListGets(pMetric->pSkipList, &key, &pRes);
  for (int32_t i = 0; i < num; ++i) {
    STabObj *pOneMeter = (STabObj *)pRes[i]->pData;
    if (pOneMeter->gid.sid == pMeter->gid.sid && pOneMeter->gid.vgId == pMeter->gid.vgId) {
      assert(pMeter == pOneMeter);
      tSkipListRemoveNode(pMetric->pSkipList, pRes[i]);
    }
  }

  tSkipListDestroyKey(&key);
  if (num != 0) {
    free(pRes);
  }
}
