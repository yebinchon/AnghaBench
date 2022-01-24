#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tOrderDescriptor ;
typedef  int /*<<< orphan*/  tFilePage ;
typedef  int /*<<< orphan*/  tExtMemBuffer ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

int32_t FUNC2(tExtMemBuffer *pMemoryBuf, tOrderDescriptor *pDesc, tFilePage *pPage, int32_t orderType) {
  int32_t ret = FUNC1(pMemoryBuf, pDesc, pPage, orderType);
  if (ret != 0) {
    return -1;
  }

  if (!FUNC0(pMemoryBuf)) {
    return -1;
  }

  return 0;
}