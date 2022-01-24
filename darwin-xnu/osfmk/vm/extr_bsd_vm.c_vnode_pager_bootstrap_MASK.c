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
typedef  int vm_size_t ;
struct vnode_pager {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_VNODE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  vnode_pager_zone ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
	vm_size_t      size;

	size = (vm_size_t) sizeof(struct vnode_pager);
	vnode_pager_zone = FUNC4(size, (vm_size_t) MAX_VNODE*size,
				PAGE_SIZE, "vnode pager structures");
	FUNC5(vnode_pager_zone, Z_CALLERACCT, FALSE);
	FUNC5(vnode_pager_zone, Z_NOENCRYPT, TRUE);


#if CONFIG_CODE_DECRYPTION
	apple_protect_pager_bootstrap();
#endif	/* CONFIG_CODE_DECRYPTION */
	FUNC3();
#if __arm64__
	fourk_pager_bootstrap();
#endif /* __arm64__ */
	FUNC2();

	return;
}