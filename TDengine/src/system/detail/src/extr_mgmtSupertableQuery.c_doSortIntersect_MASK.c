#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* pRes; size_t num; } ;
typedef  TYPE_1__ tQueryResultset ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  tabObjPointerComparator ; 

__attribute__((used)) static tQueryResultset* FUNC3(tQueryResultset* pRes1, tQueryResultset* pRes2) {
  size_t sizePtr = sizeof(void*);

  FUNC1(pRes1->pRes, pRes1->num, sizePtr, tabObjPointerComparator);
  FUNC1(pRes2->pRes, pRes2->num, sizePtr, tabObjPointerComparator);

  int32_t i = 0;
  int32_t j = 0;

  int32_t num = 0;
  while (i < pRes1->num && j < pRes2->num) {
    if (pRes1->pRes[i] == pRes2->pRes[j]) {
      j++;
      pRes1->pRes[num++] = pRes1->pRes[i++];
    } else if (pRes1->pRes[i] < pRes2->pRes[j]) {
      i++;
    } else {
      j++;
    }
  }

  FUNC2(pRes2);

  FUNC0(pRes1->pRes + num, 0, sizeof(void*) * (pRes1->num - num));
  pRes1->num = num;
  return pRes1;
}