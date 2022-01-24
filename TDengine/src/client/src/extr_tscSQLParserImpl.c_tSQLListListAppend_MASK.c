#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nAlloc; int nList; int /*<<< orphan*/ ** a; } ;
typedef  TYPE_1__ tSQLExprListList ;
typedef  int /*<<< orphan*/  tSQLExprList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/ ** FUNC2 (int /*<<< orphan*/ **,int) ; 

tSQLExprListList *FUNC3(tSQLExprListList *pList, tSQLExprList *pExprList) {
  if (pList == NULL) pList = FUNC1(1, sizeof(tSQLExprListList));

  if (pList->nAlloc <= pList->nList) {  //
    pList->nAlloc = (pList->nAlloc << 1) + 4;
    pList->a = FUNC2(pList->a, pList->nAlloc * sizeof(pList->a[0]));
    if (pList->a == 0) {
      pList->nList = pList->nAlloc = 0;
      return pList;
    }
  }
  FUNC0(pList->a != 0);

  if (pExprList) {
    pList->a[pList->nList++] = pExprList;
  }

  return pList;
}