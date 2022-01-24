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
struct TYPE_4__ {size_t nExpr; struct TYPE_4__* a; int /*<<< orphan*/  pNode; struct TYPE_4__* aliasName; } ;
typedef  TYPE_1__ tSQLExprList ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(tSQLExprList *pList) {
  if (pList == NULL) return;

  for (int32_t i = 0; i < pList->nExpr; ++i) {
    if (pList->a[i].aliasName != NULL) {
      FUNC0(pList->a[i].aliasName);
    }
    FUNC1(pList->a[i].pNode);
  }

  FUNC0(pList->a);
  FUNC0(pList);
}