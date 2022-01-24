#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_4__ {size_t numOfTables; int /*<<< orphan*/ * pMeterInfo; } ;
typedef  TYPE_1__ SSqlCmd ;
typedef  int /*<<< orphan*/  SMeterMetaInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,size_t) ; 

void FUNC4(SSqlCmd* pCmd, int32_t index, bool removeFromCache) {
  if (index < 0 || index >= pCmd->numOfTables) {
    return;
  }

  SMeterMetaInfo* pMeterMetaInfo = FUNC3(pCmd, index);

  FUNC2(pMeterMetaInfo, removeFromCache);
  FUNC0(pMeterMetaInfo);

  int32_t after = pCmd->numOfTables - index - 1;
  if (after > 0) {
    FUNC1(&pCmd->pMeterInfo[index], &pCmd->pMeterInfo[index + 1], after * sizeof(void*));
  }

  pCmd->numOfTables -= 1;
}