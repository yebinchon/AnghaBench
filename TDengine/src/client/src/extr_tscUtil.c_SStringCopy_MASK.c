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
struct TYPE_5__ {scalar_t__ n; scalar_t__ alloc; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ SString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(SString* pDest, const SString* pSrc) {
  if (pSrc->n > 0) {
    pDest->n = pSrc->n;
    pDest->alloc = pDest->n + 1;  // one additional space for null terminate

    pDest->z = FUNC0(1, pDest->alloc);

    FUNC1(pDest->z, pSrc->z, pDest->n);
  } else {
    FUNC2(pDest, 0, sizeof(SString));
  }
}