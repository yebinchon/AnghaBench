#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  sortOrder; } ;
typedef  TYPE_1__ tVariantListItem ;
struct TYPE_11__ {int nExpr; TYPE_1__* a; } ;
typedef  TYPE_2__ tVariantList ;
typedef  int /*<<< orphan*/  tVariant ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 

tVariantList *FUNC4(tVariantList *pList, tVariant *pVar, uint8_t sortOrder, int32_t index) {
  if (pList == NULL || index >= pList->nExpr) {
    return FUNC2(NULL, pVar, sortOrder);
  }

  if (FUNC3(pList) == NULL) {
    return pList;
  }

  if (pVar) {
    FUNC1(&pList->a[index + 1], &pList->a[index], sizeof(tVariantListItem) * (pList->nExpr - index));

    tVariantListItem *pItem = &pList->a[index];
    /*
     * Here we do not employ the assign function, since we need the pz attribute of structure
     * , which is the point to char string, to free it!
     *
     * Otherwise, the original pointer may be lost, which causes memory leak.
     */
    FUNC0(pItem, pVar, sizeof(tVariant));
    pItem->sortOrder = sortOrder;

    pList->nExpr++;
  }

  return pList;
}