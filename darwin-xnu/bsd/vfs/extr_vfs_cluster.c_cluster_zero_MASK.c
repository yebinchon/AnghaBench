#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  int upl_offset_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  TYPE_1__* buf_t ;
typedef  int addr64_t ;
struct TYPE_4__ {scalar_t__ b_datap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

void
FUNC9(upl_t upl, upl_offset_t upl_offset, int size, buf_t bp)
{

	FUNC1((FUNC0(DBG_FSRW, 23)) | DBG_FUNC_START,
		     upl_offset, size, bp, 0, 0);

	if (bp == NULL || bp->b_datap == 0) {
	        upl_page_info_t *pl;
	        addr64_t	zero_addr;

	        pl = FUNC6(upl);

		if (FUNC7(pl) == TRUE) {
		        zero_addr = ((addr64_t)FUNC8(pl, 0) << PAGE_SHIFT) + upl_offset;

			FUNC4(zero_addr, size);
		} else {
		        while (size) {
			        int	page_offset;
				int	page_index;
				int	zero_cnt;

				page_index  = upl_offset / PAGE_SIZE;
				page_offset = upl_offset & PAGE_MASK;

				zero_addr = ((addr64_t)FUNC8(pl, page_index) << PAGE_SHIFT) + page_offset;
				zero_cnt  = FUNC5(PAGE_SIZE - page_offset, size);

				FUNC3(zero_addr, zero_cnt);

				size       -= zero_cnt;
				upl_offset += zero_cnt;
			}
		}
	} else
		FUNC2((caddr_t)((vm_offset_t)bp->b_datap + upl_offset), size);

	FUNC1((FUNC0(DBG_FSRW, 23)) | DBG_FUNC_END,
		     upl_offset, size, 0, 0, 0);
}