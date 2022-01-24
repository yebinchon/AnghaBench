#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_3__ {scalar_t__ numOfQueries; int /*<<< orphan*/  meterId; int /*<<< orphan*/  sid; int /*<<< orphan*/  vnode; } ;
typedef  int /*<<< orphan*/  SQueryMeterMsg ;
typedef  TYPE_1__ SMeterObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t,size_t,...) ; 

void FUNC2(SQueryMeterMsg* pQueryMsg, SMeterObj** pMeterObjList, int32_t numOfInc) {
  int32_t num = 0;

  for (int32_t i = 0; i < numOfInc; ++i) {
    SMeterObj* pMeter = pMeterObjList[i];

    if (pMeter != NULL) {  // here, do not need to lock to perform operations
      FUNC0(&pMeter->numOfQueries, 1);

      if (pMeter->numOfQueries > 0) {
        FUNC1("qmsg:%p, vid:%d sid:%d id:%s dec query ref, numOfQueries:%d", pQueryMsg, pMeter->vnode, pMeter->sid,
               pMeter->meterId, pMeter->numOfQueries);
        num++;
      }
    }
  }

  FUNC1("qmsg:%p, dec query ref for %d meters, numOfQueries on %d meters are 0", pQueryMsg, numOfInc, numOfInc - num);
}