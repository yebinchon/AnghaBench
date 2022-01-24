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
typedef  int /*<<< orphan*/  tExtMemBuffer ;
typedef  int /*<<< orphan*/  tColModel ;
typedef  size_t int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

void FUNC4(tExtMemBuffer **pMemBuffer, tOrderDescriptor *pDesc, tColModel *pFinalModel,
                               int32_t numOfVnodes) {
  FUNC0(pFinalModel);
  FUNC2(pDesc);
  for (int32_t i = 0; i < numOfVnodes; ++i) {
    FUNC1(&pMemBuffer[i]);
  }

  FUNC3(pMemBuffer);
}