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
struct TYPE_3__ {int /*<<< orphan*/  __fpu_k0; } ;
typedef  TYPE_1__ X86_AVX512_STATE_T ;
typedef  int /*<<< orphan*/  OPMASK ;

/* Variables and functions */
 int KARRAY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(X86_AVX512_STATE_T *sp, OPMASK *op) {
	OPMASK *k = (OPMASK *) &sp->__fpu_k0;
	for (int i = 0; i < KARRAY_MAX; i++) {
		FUNC0(&k[i], &op[i], sizeof(*op));
	}
}