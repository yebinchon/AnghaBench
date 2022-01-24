#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_1__* pMetric; scalar_t__ pHead; } ;
struct TYPE_7__ {int /*<<< orphan*/  meterId; struct TYPE_7__* next; } ;
typedef  TYPE_1__ STabObj ;
typedef  TYPE_2__ SDbObj ;

/* Variables and functions */
 int /*<<< orphan*/  dbSdb ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC4(SDbObj *pDb) {
  while (pDb->pHead) FUNC2(pDb, pDb->pHead);

  STabObj *pMetric = pDb->pMetric;
  while (pMetric) {
    STabObj *pNext = pMetric->next;
    FUNC1(pDb, pMetric->meterId, 0);
    pMetric = pNext;
  }

  FUNC0("db:%s all meters drop finished", pDb->name);
  FUNC3(dbSdb, pDb);
  FUNC0("db:%s database drop finished", pDb->name);
}