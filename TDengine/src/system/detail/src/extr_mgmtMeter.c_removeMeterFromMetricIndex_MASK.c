#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ pData; } ;
typedef  TYPE_2__ tSkipListNode ;
struct TYPE_17__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ tSkipListKey ;
typedef  size_t int32_t ;
struct TYPE_15__ {scalar_t__ sid; scalar_t__ vgId; } ;
struct TYPE_18__ {int /*<<< orphan*/ * pSkipList; TYPE_1__ gid; } ;
typedef  TYPE_4__ STabObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__***) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(STabObj *pMetric, STabObj *pMeter) {
  if (pMetric->pSkipList == NULL) {
    return;
  }

  tSkipListKey key = {0};
  FUNC1(pMetric, pMeter, &key);
  tSkipListNode **pRes = NULL;

  int32_t num = FUNC4(pMetric->pSkipList, &key, &pRes);
  for (int32_t i = 0; i < num; ++i) {
    STabObj *pOneMeter = (STabObj *)pRes[i]->pData;
    if (pOneMeter->gid.sid == pMeter->gid.sid && pOneMeter->gid.vgId == pMeter->gid.vgId) {
      FUNC0(pMeter == pOneMeter);
      FUNC5(pMetric->pSkipList, pRes[i]);
    }
  }

  FUNC3(&key);
  if (num != 0) {
    FUNC2(pRes);
  }
}