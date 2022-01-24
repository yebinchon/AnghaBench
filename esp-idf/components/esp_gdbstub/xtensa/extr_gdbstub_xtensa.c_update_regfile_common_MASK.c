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
struct TYPE_3__ {int* a; int windowstart; int /*<<< orphan*/  configid1; int /*<<< orphan*/  configid0; scalar_t__ windowbase; } ;
typedef  TYPE_1__ esp_gdbstub_gdb_regfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGID0 ; 
 int /*<<< orphan*/  CONFIGID1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(esp_gdbstub_gdb_regfile_t *dst)
{
    if (dst->a[0] & 0x8000000U) {
        dst->a[0] = (dst->a[0] & 0x3fffffffU) | 0x40000000U;
    }
    if (!FUNC1(dst->a[1])) {
        dst->a[1] = 0xDEADBEEF;
    }
    dst->windowbase = 0;
    dst->windowstart = 0x1;
    FUNC0(CONFIGID0, dst->configid0);
    FUNC0(CONFIGID1, dst->configid1);
}