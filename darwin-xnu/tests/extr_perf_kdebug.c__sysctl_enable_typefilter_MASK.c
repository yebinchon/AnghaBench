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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int CTL_KERN ; 
 size_t KDBG_TYPEFILTER_BITMAP_SIZE ; 
 int KERN_KDEBUG ; 
 int KERN_KDSET_TYPEFILTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int*,int,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t* type_filter_bitmap) {
	int mib[] = { CTL_KERN, KERN_KDEBUG, KERN_KDSET_TYPEFILTER };
	size_t needed = KDBG_TYPEFILTER_BITMAP_SIZE;
	if(FUNC1(mib, 3, type_filter_bitmap, &needed, NULL, 0)) {
		FUNC0("KERN_KDSET_TYPEFILTER sysctl failed");
	}
}