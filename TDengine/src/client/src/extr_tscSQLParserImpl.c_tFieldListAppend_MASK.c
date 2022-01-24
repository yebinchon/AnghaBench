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
struct TYPE_5__ {int nAlloc; int nField; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ tFieldList ;
struct TAOS_FIELD {int dummy; } ;
typedef  int /*<<< orphan*/  TAOS_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct TAOS_FIELD*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

tFieldList *FUNC4(tFieldList *pList, TAOS_FIELD *pField) {
  if (pList == NULL) pList = FUNC1(1, sizeof(tFieldList));

  if (pList->nAlloc <= pList->nField) {  //
    pList->nAlloc = (pList->nAlloc << 1) + 4;
    pList->p = FUNC3(pList->p, pList->nAlloc * sizeof(pList->p[0]));
    if (pList->p == 0) {
      pList->nField = pList->nAlloc = 0;
      return pList;
    }
  }
  FUNC0(pList->p != 0);

  if (pField) {
    struct TAOS_FIELD *pItem = (struct TAOS_FIELD *)&pList->p[pList->nField++];
    FUNC2(pItem, pField, sizeof(TAOS_FIELD));
  }
  return pList;
}