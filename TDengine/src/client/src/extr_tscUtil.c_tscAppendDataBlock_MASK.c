#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nSize; int nAlloc; int /*<<< orphan*/ ** pData; } ;
typedef  int /*<<< orphan*/  STableDataBlocks ;
typedef  TYPE_1__ SDataBlockList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 

void FUNC2(SDataBlockList* pList, STableDataBlocks* pBlocks) {
  if (pList->nSize >= pList->nAlloc) {
    pList->nAlloc = pList->nAlloc << 1;
    pList->pData = FUNC1(pList->pData, sizeof(void*) * (size_t)pList->nAlloc);

    // reset allocated memory
    FUNC0(pList->pData + pList->nSize, 0, sizeof(void*) * (pList->nAlloc - pList->nSize));
  }

  pList->pData[pList->nSize++] = pBlocks;
}