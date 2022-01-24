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
typedef  int /*<<< orphan*/  uint64_t ;
struct vnode {int dummy; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SWAPFILENAME_INDEX_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VM_PAGER_COMPRESSOR_WITH_SWAP ; 
 int compaction_swapper_inited ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 char* swapfilename ; 
 int vm_compressor_catchup_threshold_divisor ; 
 scalar_t__ vm_compressor_catchup_threshold_divisor_overridden ; 
 int vm_compressor_majorcompact_threshold_divisor ; 
 scalar_t__ vm_compressor_majorcompact_threshold_divisor_overridden ; 
 int vm_compressor_minorcompact_threshold_divisor ; 
 scalar_t__ vm_compressor_minorcompact_threshold_divisor_overridden ; 
 scalar_t__ vm_compressor_mode ; 
 int vm_compressor_unthrottle_threshold_divisor ; 
 scalar_t__ vm_compressor_unthrottle_threshold_divisor_overridden ; 
 int /*<<< orphan*/  vm_swap_data_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct vnode**) ; 
 scalar_t__ vm_swappin_avail ; 
 int /*<<< orphan*/  vm_swappin_enabled ; 
 scalar_t__ FUNC9 (struct vnode*) ; 
 scalar_t__ FUNC10 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

void
FUNC12(void)
{
	struct	vnode *vp;
	char	*pathname;
	int	namelen;

	if (compaction_swapper_inited)
		return;

	if (vm_compressor_mode != VM_PAGER_COMPRESSOR_WITH_SWAP) {
		compaction_swapper_inited = 1;
		return;
	}
	FUNC2(&vm_swap_data_lock);

	if ( !compaction_swapper_inited) {

		namelen = (int)FUNC6(swapfilename) + SWAPFILENAME_INDEX_LEN + 1;
		pathname = (char*)FUNC0(namelen);
		FUNC4(pathname, 0, namelen);
		FUNC5(pathname, namelen, "%s%d", swapfilename, 0);

		FUNC8(pathname, &vp);

		if (vp) {
			
			if (FUNC10(vp) == FALSE) {
			        /*
				 * swap files live on an HDD, so let's make sure to start swapping
				 * much earlier since we're not worried about SSD write-wear and 
				 * we have so little write bandwidth to work with
				 * these values were derived expermentially by running the performance
				 * teams stock test for evaluating HDD performance against various 
				 * combinations and looking and comparing overall results.
				 * Note that the > relationship between these 4 values must be maintained
				 */
			        if (vm_compressor_minorcompact_threshold_divisor_overridden == 0)
				        vm_compressor_minorcompact_threshold_divisor = 15;
			        if (vm_compressor_majorcompact_threshold_divisor_overridden == 0)
				        vm_compressor_majorcompact_threshold_divisor = 18;
			        if (vm_compressor_unthrottle_threshold_divisor_overridden == 0)
				        vm_compressor_unthrottle_threshold_divisor = 24;
				if (vm_compressor_catchup_threshold_divisor_overridden == 0)
				        vm_compressor_catchup_threshold_divisor = 30;
			}
#if !CONFIG_EMBEDDED
			FUNC11(vp);
			vm_swappin_avail = FUNC9(vp);

			if (vm_swappin_avail)
				vm_swappin_enabled = TRUE;
#endif
			FUNC7((uint64_t)pathname, vp);
		}
		FUNC1(pathname, namelen);

		compaction_swapper_inited = 1;
	}
	FUNC3(&vm_swap_data_lock);
}