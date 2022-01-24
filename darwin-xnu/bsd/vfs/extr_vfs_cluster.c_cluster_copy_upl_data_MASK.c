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
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
struct uio {int uio_segflg; scalar_t__ uio_rw; scalar_t__ uio_offset; } ;
typedef  int addr64_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_FSRW ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TASK_WRITE_DEFERRED ; 
 int UIO_PHYS_SYSSPACE ; 
 int UIO_PHYS_USERSPACE ; 
 int UIO_PHYS_USERSPACE32 ; 
 int UIO_PHYS_USERSPACE64 ; 
#define  UIO_SYSSPACE 134 
#define  UIO_USERISPACE 133 
#define  UIO_USERISPACE32 132 
#define  UIO_USERISPACE64 131 
#define  UIO_USERSPACE 130 
#define  UIO_USERSPACE32 129 
#define  UIO_USERSPACE64 128 
 scalar_t__ UIO_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,struct uio*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

int
FUNC10(struct uio *uio, upl_t upl, int upl_offset, int *io_resid)
{
        int       pg_offset;
	int       pg_index;
        int   	  csize;
	int       segflg;
	int       retval = 0;
	int	  xsize;
	upl_page_info_t *pl;
	int 	  dirty_count;

	xsize = *io_resid;

	FUNC1((FUNC0(DBG_FSRW, 34)) | DBG_FUNC_START,
		     (int)uio->uio_offset, upl_offset, xsize, 0, 0);

	segflg = uio->uio_segflg;

	switch(segflg) {

	  case UIO_USERSPACE32:
	  case UIO_USERISPACE32:
		uio->uio_segflg = UIO_PHYS_USERSPACE32;
		break;

	  case UIO_USERSPACE:
	  case UIO_USERISPACE:
		uio->uio_segflg = UIO_PHYS_USERSPACE;
		break;

	  case UIO_USERSPACE64:
	  case UIO_USERISPACE64:
		uio->uio_segflg = UIO_PHYS_USERSPACE64;
		break;

	  case UIO_SYSSPACE:
		uio->uio_segflg = UIO_PHYS_SYSSPACE;
		break;

	}
	pl = FUNC5(upl);

	pg_index  = upl_offset / PAGE_SIZE;
	pg_offset = upl_offset & PAGE_MASK;
	csize     = FUNC3(PAGE_SIZE - pg_offset, xsize);

	dirty_count = 0;
	while (xsize && retval == 0) {
	        addr64_t  paddr;

		paddr = ((addr64_t)FUNC9(pl, pg_index) << PAGE_SHIFT) + pg_offset;
		if ((uio->uio_rw == UIO_WRITE) && (FUNC7(pl, pg_index) == FALSE)) 
			dirty_count++;

		retval = FUNC6(paddr, csize, uio);

		pg_index += 1;
		pg_offset = 0;
		xsize    -= csize;
		csize     = FUNC3(PAGE_SIZE, xsize);
	}
	*io_resid = xsize;

	uio->uio_segflg = segflg;

	FUNC4(FUNC2(), (dirty_count * PAGE_SIZE), TASK_WRITE_DEFERRED, FUNC8(upl));
	FUNC1((FUNC0(DBG_FSRW, 34)) | DBG_FUNC_END,
		     (int)uio->uio_offset, xsize, retval, segflg, 0);
	
	return (retval);
}