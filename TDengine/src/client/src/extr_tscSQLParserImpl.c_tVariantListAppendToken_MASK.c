#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  sortOrder; } ;
typedef  TYPE_1__ tVariantListItem ;
struct TYPE_12__ {int /*<<< orphan*/  nExpr; TYPE_1__* a; } ;
typedef  TYPE_2__ tVariantList ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ tVariant ;
typedef  int /*<<< orphan*/  SSQLToken ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 

tVariantList *FUNC4(tVariantList *pList, SSQLToken *pAliasToken, uint8_t sortOrder) {
  if (pList == NULL) {
    pList = FUNC0(1, sizeof(tVariantList));
  }

  if (FUNC3(pList) == NULL) {
    return pList;
  }

  if (pAliasToken) {
    tVariant t = {0};
    FUNC2(&t, pAliasToken);

    tVariantListItem *pItem = &pList->a[pList->nExpr++];
    FUNC1(pItem, &t, sizeof(tVariant));
    pItem->sortOrder = sortOrder;
  }
  return pList;
}