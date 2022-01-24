#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int* ftp_argmap; int /*<<< orphan*/  ftp_nargs; } ;
typedef  TYPE_1__ fasttrap_probe_t ;
struct TYPE_6__ {scalar_t__ sp; scalar_t__* r; } ;
typedef  TYPE_2__ arm_saved_state32_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(fasttrap_probe_t *probe, arm_saved_state32_t *regs32, int argc,
    uint64_t *argv)
{
	int i, x, cap = FUNC0(argc, probe->ftp_nargs);

	for (i = 0; i < cap; i++) {
		x = probe->ftp_argmap[i];

		/* Up to 4 args are passed in registers on arm */
		if (x < 4) {
			argv[i] = regs32->r[x];
		} else {
			uint32_t arg;
			FUNC1(regs32->sp + (x - 4) * sizeof(uint32_t), &arg);

			argv[i] = arg;
		}
	}

	for (; i < argc; i++) {
		argv[i] = 0;
	}
}