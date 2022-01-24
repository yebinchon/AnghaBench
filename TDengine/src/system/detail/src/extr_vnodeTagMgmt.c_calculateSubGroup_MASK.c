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
typedef  int int32_t ;
typedef  int (* __ext_compar_fn_t ) (void*,void*,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

int32_t *FUNC2(void **pSids, int32_t numOfMeters, int32_t *numOfSubset, tOrderDescriptor *pOrderDesc,
                           __ext_compar_fn_t compareFn) {
  int32_t *starterPos = (int32_t *)FUNC1((numOfMeters + 1) * sizeof(int32_t));  // add additional buffer
  starterPos[0] = 0;

  *numOfSubset = 1;

  for (int32_t i = 1; i < numOfMeters; ++i) {
    int32_t ret = compareFn(pSids[i - 1], pSids[i], pOrderDesc);
    if (ret != 0) {
      FUNC0(ret == -1);
      starterPos[(*numOfSubset)++] = i;
    }
  }

  starterPos[*numOfSubset] = numOfMeters;
  FUNC0(*numOfSubset <= numOfMeters);

  return starterPos;
}