#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  meterId; int /*<<< orphan*/  createFlag; } ;
typedef  int /*<<< orphan*/  STabObj ;
typedef  TYPE_1__ SMeterInfoMsg ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(char *pMsg) {
  SMeterInfoMsg *pInfo = (SMeterInfoMsg *)pMsg;

  int16_t  autoCreate = FUNC0(pInfo->createFlag);
  STabObj *pMeterObj = FUNC2(pInfo->meterId);

  // If table does not exists and autoCreate flag is set, we add the handler into another task queue, namely tranQueue
  bool addIntoTranQueue = (pMeterObj == NULL && autoCreate == 1);
  if (addIntoTranQueue) {
    FUNC1("meter:%s auto created task added", pInfo->meterId);
  }

  return addIntoTranQueue;
}