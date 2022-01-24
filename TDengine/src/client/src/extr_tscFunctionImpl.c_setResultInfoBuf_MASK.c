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
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int superTableQ; int /*<<< orphan*/ * interResultBuf; scalar_t__ bufLen; } ;
typedef  TYPE_1__ SResultInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,size_t) ; 

void FUNC2(SResultInfo *pResInfo, int32_t size, bool superTable) {
  FUNC0(pResInfo->interResultBuf == NULL);

  pResInfo->bufLen = size;
  pResInfo->superTableQ = superTable;

  pResInfo->interResultBuf = FUNC1(1, (size_t)size);
}