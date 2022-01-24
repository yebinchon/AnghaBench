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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ pmap_t ;
typedef  scalar_t__ mach_vm_size_t ;
typedef  scalar_t__ mach_vm_address_t ;
struct TYPE_3__ {scalar_t__ nbytes; scalar_t__ address; } ;
typedef  TYPE_1__ kdp_readphysmem64_req_t ;
typedef  scalar_t__ caddr_t ;
typedef  int addr64_t ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KDP_CURRENT_LCPU ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ kdp_pmap ; 
 scalar_t__ kdp_read_io ; 
 scalar_t__ kdp_trans_off ; 
 int FUNC4 (scalar_t__,int) ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,void*,scalar_t__) ; 

mach_vm_size_t
FUNC8( mach_vm_address_t src, caddr_t dst, mach_vm_size_t len)
{
	addr64_t cur_virt_src = FUNC1((addr64_t)src);
	addr64_t cur_virt_dst = FUNC1((addr64_t)(intptr_t)dst);
	addr64_t cur_phys_dst, cur_phys_src;
	mach_vm_size_t resid = len;
	mach_vm_size_t cnt = 0, cnt_src, cnt_dst;
	pmap_t src_pmap = kernel_pmap;

#ifdef KDP_VM_READ_DEBUG
	printf("kdp_vm_read: src %llx dst %p len %llx\n", src, (void *)dst, len);
#endif

	if (kdp_trans_off && FUNC0(src)) {
		kdp_readphysmem64_req_t rq;
		mach_vm_size_t ret;

		rq.address = src;
		rq.nbytes = (uint32_t)len;
		ret = FUNC3(&rq, dst, KDP_CURRENT_LCPU);
		return ret;
	}

/* If a different pmap has been specified with kdp_pmap, use it to translate the
 * source (cur_virt_src); otherwise, the source is translated using the
 * kernel_pmap.
 */
	if (kdp_pmap)
		src_pmap = kdp_pmap;

	while (resid != 0) {
		if (!(cur_phys_src = FUNC4(src_pmap,
			    cur_virt_src)))
			goto exit;

/* Always translate the destination buffer using the kernel_pmap */
		if(!(cur_phys_dst = FUNC4(kernel_pmap, cur_virt_dst)))
			goto exit;

		/* Validate physical page numbers unless kdp_read_io is set */
		if (kdp_read_io == FALSE)
			if (!FUNC6(FUNC2(cur_phys_dst)) || !FUNC6(FUNC2(cur_phys_src)))
				goto exit;

/* Get length left on page */
		cnt_src = PAGE_SIZE - (cur_phys_src & PAGE_MASK);
		cnt_dst = PAGE_SIZE - (cur_phys_dst & PAGE_MASK);
		if (cnt_src > cnt_dst)
			cnt = cnt_dst;
		else
			cnt = cnt_src;
		if (cnt > resid) 
			cnt = resid;

/* Do a physical copy */
		if (EFAULT == FUNC5(cur_phys_src,
					   cur_phys_dst,
					   (vm_size_t)cnt))
			goto exit;
		cur_virt_src += cnt;
		cur_virt_dst += cnt;
		resid -= cnt;
	}
exit:
	return (len - resid);
}