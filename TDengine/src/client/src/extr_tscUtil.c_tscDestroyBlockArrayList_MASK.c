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
typedef  size_t int32_t ;
struct TYPE_5__ {size_t nSize; struct TYPE_5__* pData; } ;
typedef  TYPE_1__ SDataBlockList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

void* FUNC2(SDataBlockList* pList) {
  if (pList == NULL) {
    return NULL;
  }

  for (int32_t i = 0; i < pList->nSize; i++) {
    FUNC1(pList->pData[i]);
  }

  FUNC0(pList->pData);
  FUNC0(pList);

  return NULL;
}