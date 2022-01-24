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
typedef  int mach_vm_size_t ;
typedef  int mach_vm_address_t ;
typedef  int caddr_t ;
typedef  int addr64_t ;

/* Variables and functions */
 int ARM_PGBYTES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,...) ; 

mach_vm_size_t
FUNC6( caddr_t src, mach_vm_address_t dst, mach_vm_size_t len)
{
	addr64_t        cur_virt_src, cur_virt_dst;
	addr64_t        cur_phys_src, cur_phys_dst;
	mach_vm_size_t  resid, cnt, cnt_src, cnt_dst;

#ifdef KDP_VM_WRITE_DEBUG
	printf("kdp_vm_write: src %x dst %x len %x - %08X %08X\n", src, dst, len, ((unsigned long *) src)[0], ((unsigned long *) src)[1]);
#endif

	cur_virt_src = (addr64_t) src;
	cur_virt_dst = (addr64_t) dst;

	resid = len;

	while (resid != 0) {
		if ((cur_phys_dst = FUNC3(kernel_pmap, cur_virt_dst)) == 0)
			goto exit;

		if ((cur_phys_src = FUNC3(kernel_pmap, cur_virt_src)) == 0)
			goto exit;

		/* Attempt to ensure that there are valid translations for src and dst. */
		/* No support for enabling writes for an invalid translation at the moment. */
		if ((!FUNC4(cur_phys_dst)) || (!FUNC4(cur_phys_src)))
			goto exit;

		cnt_src = ((cur_phys_src + ARM_PGBYTES) & (-ARM_PGBYTES)) - cur_phys_src;
		cnt_dst = ((cur_phys_dst + ARM_PGBYTES) & (-ARM_PGBYTES)) - cur_phys_dst;

		if (cnt_src > cnt_dst)
			cnt = cnt_dst;
		else
			cnt = cnt_src;
		if (cnt > resid)
			cnt = resid;

#ifdef KDP_VM_WRITE_DEBUG
		printf("kdp_vm_write: cur_phys_src %x cur_phys_src %x len %x - %08X %08X\n", src, dst, cnt);
#endif
		FUNC0(cur_phys_src, cur_phys_dst, cnt);	/* Copy stuff over */
		FUNC1(cur_phys_dst, (unsigned int)cnt, TRUE);
		FUNC2(cur_phys_dst, (unsigned int)cnt, TRUE);

		cur_virt_src += cnt;
		cur_virt_dst += cnt;
		resid -= cnt;
	}
exit:
	return (len - resid);
}