#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ numOfOrderedCols; } ;
struct TYPE_9__ {TYPE_6__* pSchema; TYPE_1__ orderIdx; } ;
typedef  TYPE_2__ tOrderDescriptor ;
struct TYPE_10__ {scalar_t__ numOfElems; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ tFilePage ;
typedef  int /*<<< orphan*/  tExtMemBuffer ;
typedef  int int32_t ;
struct TYPE_11__ {scalar_t__ maxCapacity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int32_t FUNC6(tExtMemBuffer *pMemoryBuf, tOrderDescriptor *pDesc, tFilePage *pPage,
                                     int32_t orderType) {
  if (pPage->numOfElems == 0) {
    return 0;
  }

  FUNC0(pPage->numOfElems <= pDesc->pSchema->maxCapacity);

  // sort before flush to disk, the data must be consecutively put on tFilePage.
  if (pDesc->orderIdx.numOfOrderedCols > 0) {
    FUNC2(pDesc, pPage->numOfElems, 0, pPage->numOfElems - 1, pPage->data, orderType);
  }

#ifdef _DEBUG_VIEW
  printf("%ld rows data flushed to disk after been sorted:\n", pPage->numOfElems);
  tColModelDisplay(pDesc->pSchema, pPage->data, pPage->numOfElems, pPage->numOfElems);
#endif

  // write to cache after being sorted
  if (FUNC4(pMemoryBuf, pPage->data, pPage->numOfElems) < 0) {
    FUNC5("failed to save data in temporary buffer");
    return -1;
  }

  pPage->numOfElems = 0;
  return 0;
}