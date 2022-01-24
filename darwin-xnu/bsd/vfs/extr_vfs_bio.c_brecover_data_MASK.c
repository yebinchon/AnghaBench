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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* buf_t ;
struct TYPE_5__ {int b_bufsize; int /*<<< orphan*/  b_flags; int /*<<< orphan*/  b_datap; int /*<<< orphan*/  b_upl; int /*<<< orphan*/  b_lblkno; int /*<<< orphan*/  b_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_INVAL ; 
 int B_READ ; 
 scalar_t__ KERN_SUCCESS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int UPL_PRECIOUS ; 
 int UPL_WILL_MODIFY ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_FILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(buf_t bp)
{
	int	upl_offset;
        upl_t	upl;
	upl_page_info_t *pl;
	kern_return_t kret;
	vnode_t	vp = bp->b_vp;
	int upl_flags;


	if ( !FUNC1(vp) || bp->b_bufsize == 0)
	        goto dump_buffer;

	upl_flags = UPL_PRECIOUS;
	if (! (FUNC3(bp) & B_READ)) {
		/*
		 * "write" operation:  let the UPL subsystem know
		 * that we intend to modify the buffer cache pages we're
		 * gathering.
		 */
		upl_flags |= UPL_WILL_MODIFY;
	}
		
	kret = FUNC6(vp,
			      FUNC5(vp, bp->b_lblkno), 
			      bp->b_bufsize, 
			      &upl, 
			      &pl,
			      upl_flags,
			      VM_KERN_MEMORY_FILE);
	if (kret != KERN_SUCCESS)
	        FUNC4("Failed to create UPL");

	for (upl_offset = 0; upl_offset < bp->b_bufsize; upl_offset += PAGE_SIZE) {

	        if (!FUNC10(pl, upl_offset / PAGE_SIZE) || !FUNC9(pl, upl_offset / PAGE_SIZE)) {
		        FUNC7(upl, 0);
			goto dump_buffer;
		}
	}
	bp->b_upl = upl;
					
	kret = FUNC8(upl, (vm_offset_t *)&(bp->b_datap));

	if (kret != KERN_SUCCESS)
	        FUNC4("getblk: ubc_upl_map() failed with (%d)", kret);
	return (1);

dump_buffer:
	bp->b_bufsize = 0;
	FUNC0(bp->b_flags, B_INVAL);
	FUNC2(bp);

	return(0);
}