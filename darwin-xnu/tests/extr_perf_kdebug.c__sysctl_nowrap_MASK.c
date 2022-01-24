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

/* Variables and functions */
 int CTL_KERN ; 
 int KDBG_NOWRAP ; 
 int KERN_KDDFLAGS ; 
 int KERN_KDEBUG ; 
 int KERN_KDEFLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(bool is_nowrap) {
	int mib[] = { CTL_KERN, KERN_KDEBUG, is_nowrap ? KERN_KDEFLAGS : KERN_KDDFLAGS, KDBG_NOWRAP };
	if (FUNC1(mib, 4, NULL, NULL, NULL, 0)) {
		FUNC0("KDBG_NOWRAP sysctl failed");
	}
}