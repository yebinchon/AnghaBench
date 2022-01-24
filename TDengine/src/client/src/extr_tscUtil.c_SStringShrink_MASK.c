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
struct TYPE_3__ {int alloc; int n; int /*<<< orphan*/ * z; } ;
typedef  TYPE_1__ SString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(SString* pStr) {
  if (pStr->alloc > (pStr->n + 1) && pStr->alloc > (pStr->n * 2)) {
    pStr->z = FUNC1(pStr->z, pStr->n + 1);
    FUNC0(pStr->z != NULL);

    pStr->alloc = pStr->n + 1;
  }
}