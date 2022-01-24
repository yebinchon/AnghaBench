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
struct TYPE_4__ {struct TYPE_4__* pHead; } ;
typedef  TYPE_1__ STabObj ;
typedef  int /*<<< orphan*/  SDbObj ;
typedef  int /*<<< orphan*/  SAcctObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(SDbObj *pDb, STabObj * pMetric, SAcctObj *pAcct) {
  STabObj * pMeter = NULL;

  while ((pMeter = pMetric->pHead) != NULL) {
    (void)FUNC0(pDb, pMeter, pAcct);    
  }
}