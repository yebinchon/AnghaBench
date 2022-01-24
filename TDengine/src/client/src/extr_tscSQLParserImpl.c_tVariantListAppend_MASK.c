#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  sortOrder; } ;
typedef  TYPE_1__ tVariantListItem ;
struct TYPE_9__ {int /*<<< orphan*/  nExpr; TYPE_1__* a; } ;
typedef  TYPE_2__ tVariantList ;
typedef  int /*<<< orphan*/  tVariant ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 

tVariantList *FUNC3(tVariantList *pList, tVariant *pVar, uint8_t sortOrder) {
  if (pList == NULL) {
    pList = FUNC0(1, sizeof(tVariantList));
  }

  if (FUNC2(pList) == NULL) {
    return pList;
  }

  if (pVar) {
    tVariantListItem *pItem = &pList->a[pList->nExpr++];
    /*
     * Here we do not employ the assign function, since we need the pz attribute of structure
     * , which is the point to char string, to free it!
     *
     * Otherwise, the original pointer may be lost, which causes memory leak.
     */
    FUNC1(pItem, pVar, sizeof(tVariant));
    pItem->sortOrder = sortOrder;
  }
  return pList;
}